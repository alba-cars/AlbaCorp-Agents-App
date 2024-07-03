import 'dart:io';

import 'package:path/path.dart' as path;

import '../util/s3_helpers.dart';

class FileObject {
  final String? networkImageUrl;
  final String? networkObjectId;
  final String? localImage;
  final String? uploadedUrl;
  final bool isChanged;

  FileObject({
    this.networkImageUrl,
    this.networkObjectId,
    this.localImage,
    this.isChanged = false,
    this.uploadedUrl,
  });

  FileObject copyWith(
      {String? localImage, bool? isChanged, String? uploadedUrl}) {
    return FileObject(
        networkImageUrl: networkImageUrl,
        networkObjectId: networkObjectId,
        localImage: localImage,
        isChanged: isChanged ?? this.isChanged,
        uploadedUrl: uploadedUrl);
  }

  Future<FileObject> upload({bool update = false}) async {
    final url = ((update && isChanged) || !update)
        ? path.basename(
            await uploadFileToS3AndGetPath(File(localImage!), path: 'temp'))
        : null;
    return FileObject(
        localImage: url,
        uploadedUrl: url,
        isChanged: isChanged,
        networkImageUrl: networkImageUrl);
  }
}
