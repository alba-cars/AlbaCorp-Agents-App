import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart';

import 'package:uuid/uuid.dart';
import 'package:path/path.dart';

import '../service_locator/injectable.dart';

Future<String> uploadFileToS3AndGetPath(File file,
    {String? name, String? path, String? fullPath}) async {
  try {
    String fileName = name ?? '${const Uuid().v4()}${extension(file.path)}';
    String filePath = path == null ? fileName : '$path/$fileName';
    Uint8List fileBytes = await file.readAsBytes();
    String? fileType = lookupMimeType(file.path);

    final dio = getIt<Dio>();

    var putAccessResponse = await dio.post(
      'v1/upload',
      data: {
        'action': 'putObject',
        'fileName': fullPath != null
            ? fullPath
            : path == null
                ? fileName
                : '$path/$fileName'
      },
    );

    String putSignedURL = putAccessResponse.data['signedRequest'];
    await Dio().put(
      putSignedURL,
      data: Stream.fromIterable(fileBytes.map((e) => [e])),
      options: Options(
        headers: {
          Headers.contentLengthHeader: fileBytes.length,
          Headers.contentTypeHeader: fileType!
        },
      ),
    );
    return fullPath ?? filePath;
  } catch (e, stackTrace) {
    return Future.error(e);
  }
}

Future<String> getFileSignedURLFromS3(String path) async {
  try {
    var getAccessResponse = await getIt<Dio>().post(
      'v1/upload',
      data: {'action': 'getObject', 'fileName': path},
    );
    String getSignedURL = getAccessResponse.data['signedRequest'];
    return getSignedURL;
  } catch (e, stackTrace) {
    return Future.error(e);
  }
}

Future<String> getPdfFileSignedURLFromS3(String path) async {
  try {
    var getAccessResponse = await getIt<Dio>().post(
      'v1/upload',
      data: {
        'action': 'getObject',
        'fileName': path,
        // "ResponseContentType": "application/pdf"
      },
    );
    String getSignedURL = getAccessResponse.data['signedRequest'];
    return getSignedURL;
  } catch (e, stackTrace) {
    return Future.error(e);
  }
}

Future<File?> downloadFileAndGetFromS3(String? path,
    {bool returnNullIfNotFound = false, String? pathIfNull}) async {
  bool failed = false;
  File? file;
  return null;
  // try {
  //   if (path == null) {
  //     return pathIfNull != null
  //         ? await getImageFileFromAssets(pathIfNull)
  //         : filePrecacheService.carDefaultImage;
  //   }
  //   File? cachedFile =
  //       (await DefaultCacheManager().getFileFromCache(path))?.file;
  //   // File? cachedFile = null;
  //   if (cachedFile != null) return cachedFile;
  //   String s3FilePath = await getFileSignedURLFromS3(path);
  //   Directory appDir = await getApplicationDocumentsDirectory();
  //   String filePath = '${appDir.path}/${basename(path)}';
  //   await Dio().download(
  //     s3FilePath,
  //     filePath,
  //   );
  //   file = File(filePath);
  // } catch (e, stackTrace) {
  //   await Sentry.captureException(
  //     e,
  //     stackTrace: stackTrace,
  //   );
  //   if (!returnNullIfNotFound) {
  //     failed = true;
  //     file = pathIfNull != null
  //         ? await getImageFileFromAssets(pathIfNull)
  //         : filePrecacheService.carDefaultImage;
  //   }
  // }
  // if (path != null && !failed) {
  //   String? fileExtension = extension(file!.path);
  //   if (fileExtension.trim().isNotEmpty) {
  //     fileExtension = fileExtension.replaceFirst('.', '');
  //   } else {
  //     fileExtension = null;
  //   }
  //   DefaultCacheManager().putFile(path, file.readAsBytesSync(),
  //       maxAge: const Duration(days: 30),
  //       fileExtension: fileExtension == null ? 'file' : fileExtension);
  // }
  // return file;
}
