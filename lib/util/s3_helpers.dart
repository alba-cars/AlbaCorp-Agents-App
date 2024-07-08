import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
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
          Headers.contentTypeHeader: fileType
        },
      ),
    );
    return fullPath ?? filePath;
  } catch (e, stackTrace) {
    Logger().e(e, stackTrace: stackTrace);
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
    Logger().e(e, stackTrace: stackTrace);
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
    Logger().e(e, stackTrace: stackTrace);
    return Future.error(e);
  }
}
