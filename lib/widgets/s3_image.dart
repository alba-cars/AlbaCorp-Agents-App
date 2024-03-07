import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:logger/logger.dart';

import '../service_locator/injectable.dart';
import '../util/s3_helpers.dart';

class S3Image extends StatefulWidget {
  const S3Image(
      {super.key,
      required this.url,
      this.fit,
      this.color,
      this.onLoaded,
      this.placeHolder,
      this.errorWidget,
      this.publicImage = false});

  final String? url;
  final BoxFit? fit;
  final Color? color;
  final Function(ImageDetail)? onLoaded;
  final Widget? placeHolder;
  final Widget? errorWidget;
  final bool publicImage;

  @override
  State<S3Image> createState() => _S3ImageState();
}

class _S3ImageState extends State<S3Image> {
  bool isLoading = true;
  File? file;
  ImageProvider? image;
  bool error = false;
  ImageDetail? imageDetail;

  @override
  void initState() {
    isLoading = true;

    getUrl();

    super.initState();
  }

  getUrl() async {
    try {
      if (widget.url != null) {
        if (!widget.publicImage) {
          final fileinfo =
              await DefaultCacheManager().getFileFromCache(widget.url!);
          if (fileinfo != null) {
            file = fileinfo.file;
          } else {
            try {
              final url = await getFileSignedURLFromS3(widget.url!);

              final fileinfo = await DefaultCacheManager()
                  .downloadFile(url, key: widget.url);

              file = fileinfo.file;
            } catch (e) {
              isLoading = false;
              error = true;
              print(e);
            }
          }
        } else {
          final fileinfo =
              await DefaultCacheManager().getFileFromCache(widget.url!);
          if (fileinfo != null) {
            file = fileinfo.file;
          } else {
            try {
              final fileinfo = await DefaultCacheManager().downloadFile(
                  '${getIt<String>(instanceName: 'AwsBucket')}${widget.url}',
                  key: widget.url);

              file = fileinfo.file;
            } catch (e) {
              isLoading = false;
              error = true;
              print(e);
            }
          }
        }
        if (file != null) {
          final width =
              mounted ? MediaQuery.of(context).size.width.toInt() : 500;
          image = ResizeImage(
              FileImage(
                file!,
              ),
              policy: ResizeImagePolicy.fit,
              width: width);
        }

        if (image != null) {
          if (widget.onLoaded != null) {
            Completer<ImageDetail> completer = Completer<ImageDetail>();
            image!
                .resolve(const ImageConfiguration())
                .addListener(ImageStreamListener((ImageInfo imageInfo, bool _) {
              final dimensions = ImageDetail(
                  width: imageInfo.image.width,
                  height: imageInfo.image.height,
                  aspectRatio: imageInfo.image.width / imageInfo.image.height);
              completer.complete(dimensions);
            }));
            imageDetail = await completer.future;
            widget.onLoaded?.call(imageDetail!);
          }
        }
      }
    } catch (e) {
      Logger().d(e);
    }

    isLoading = false;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didUpdateWidget(covariant S3Image oldWidget) {
    if (widget.url != oldWidget.url && widget.url != null) {
      getUrl();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading == false) {
      if (image != null) {
        return widget.color == null
            ? Image(
                image: image!,
                fit: widget.fit != null ? widget.fit! : BoxFit.cover,
              )
            : FittedBox(
                child: ImageIcon(
                  image!,
                  color: widget.color,
                ),
              );
      } else {
        if (widget.errorWidget != null) {
          return widget.errorWidget!;
        }
        if (error) {
          return Container(
            width: double.maxFinite,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error),
                TextButton(
                    style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero),
                    onPressed: () {
                      getUrl();
                    },
                    child: const Text('Retry'))
              ],
            ),
          );
        }
        return Image.asset(
          "assets/images/detail_image.png",
          fit: widget.fit,
        );
      }
    } else {
      if (widget.placeHolder != null) {
        return widget.placeHolder!;
      }

      return const SizedBox(
        child: Center(child: CircularProgressIndicator()),
      );
    }
  }
  // }
}

class ImageDetail {
  final int width;
  final int height;
  final double aspectRatio;

  ImageDetail({
    required this.width,
    required this.height,
    required this.aspectRatio,
  });
}
