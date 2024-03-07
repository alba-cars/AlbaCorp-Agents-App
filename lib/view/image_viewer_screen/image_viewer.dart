import 'package:flutter/material.dart';

import '../../widgets/s3_image.dart';

class ImageViewerScreen extends StatefulWidget {
  static const routeName = '/imageViewerScreen/:url';
  final String? url;
  final List<String>? imageUrls;

  const ImageViewerScreen({Key? key, this.url, this.imageUrls})
      : super(key: key);

  @override
  _ImageViewerScreenState createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<ImageViewerScreen> {
  // Initialize zoom variables
  double initialScale = 1.0;
  double currentScale = 1.0;

  String? image;

  @override
  void initState() {
    image = widget.url;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        children: [
          InteractiveViewer(
            child: S3Image(
              url: image ?? widget.url,
              fit: BoxFit.contain,
            ),
          ),
          Positioned.directional(
            textDirection: Directionality.of(context),
            end: 10,
            top: 10,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: FittedBox(child: Icon(Icons.close)),
                ),
              ),
            ),
          ),
          if (widget.imageUrls != null && widget.imageUrls!.length > 1)
            Positioned.directional(
                bottom: 20,
                height: 100,
                start: 0,
                end: 0,
                textDirection: Directionality.of(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                image = widget.imageUrls![index];
                                if (mounted) setState(() {});
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                foregroundDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: image == widget.imageUrls![index]
                                      ? Border.all(
                                          width: 2,
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)
                                      : null,
                                ),
                                child: S3Image(url: widget.imageUrls![index]),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: widget.imageUrls!.length),
                    ),
                  ],
                ))
        ],
      ),
    );
  }
}

Future<void> showFullscreenImage(
    {required BuildContext context,
    String? url,
    bool isLocal = false,
    List<String>? imageUrls}) async {
  await showDialog(
    context: context,
    builder: (context) => ImageViewerScreen(
      url: url,
      imageUrls: imageUrls,
    ),
  );
}
