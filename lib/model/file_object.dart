import 'dart:io';

import 'package:path/path.dart' as path;

import '../util/s3_helpers.dart';

class FileObject {
  final String? networkImageUrl;
  final String? localImage;
  final String? uploadedUrl;
  final bool isChanged;

  FileObject({
    this.networkImageUrl,
    this.localImage,
    this.isChanged = false,
    this.uploadedUrl,
  });

  FileObject copyWith({String? localImage, bool? isChanged}) {
    return FileObject(
        networkImageUrl: networkImageUrl,
        localImage: localImage,
        isChanged: isChanged ?? this.isChanged);
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

  Future<FileObject> download() async {
    final url = await downloadFileAndGetFromS3(networkImageUrl);
    return FileObject(
        localImage: url?.path,
        uploadedUrl: uploadedUrl,
        isChanged: isChanged,
        networkImageUrl: networkImageUrl);
  }
}
