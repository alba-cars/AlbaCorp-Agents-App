import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

void shareCompanyProfile() async {
  final bytes = await rootBundle.load('assets/images/area.png');
  final list = bytes.buffer.asUint8List();
  Share.shareXFiles([XFile.fromData(list)],
      text: 'Great picture', fileNameOverrides: ['area.png']);
}
