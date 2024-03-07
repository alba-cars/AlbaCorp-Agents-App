import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import '../../util/s3_helpers.dart';
import '../../widgets/space.dart';

class PdfViewScreen extends StatefulWidget {
  final String pdfUrl;

  PdfViewScreen({
    required this.pdfUrl,
  });

  static const routeName = '/pdfViewScreen/:url';
  @override
  _PdfViewScreenState createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen> {
  late String remotePDFpath;
  bool isLoading = true;
  bool error = false;
  @override
  void initState() {
    super.initState();
    downloadPdfAndLoad();
  }

  Future<void> downloadPdfAndLoad() async {
    try {
      if (File(widget.pdfUrl).existsSync()) {
        remotePDFpath = widget.pdfUrl;
        isLoading = false;
        if (mounted) setState(() {});
      } else {
        final s3url = await getPdfFileSignedURLFromS3(widget.pdfUrl);
        final fileinfo =
            await DefaultCacheManager().downloadFile(s3url, key: widget.pdfUrl);
        remotePDFpath = fileinfo.file.path;
        isLoading = false;
        if (mounted) setState(() {});
      }
    } catch (e) {
      setState(() {
        error = true;
        isLoading = false;
      });
      // print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.primary,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const VerticalSmallGap(),
          Container(
            height: 500, // Set the height based on your requirements
            child: SafeArea(
              child: Center(
                child: Container(
                  child: isLoading
                      ? CircularProgressIndicator()
                      : error
                          ? Text('Error loading PDF')
                          : remotePDFpath.isNotEmpty
                              ? PDFView(
                                  filePath: remotePDFpath,
                                )
                              : Text('PDF not available'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
