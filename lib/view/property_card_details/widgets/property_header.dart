import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/property_card_details/widgets/show_add_photos_dialog.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';

class PropertyHeader extends StatefulWidget {
  final PropertyCardDetailsModel? propertyCard;
  final bool isScrolled;

  const PropertyHeader({
    Key? key,
    required this.propertyCard,
    required this.isScrolled,
  }) : super(key: key);

  @override
  State<PropertyHeader> createState() => _PropertyHeaderState();
}

class _PropertyHeaderState extends State<PropertyHeader> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentImageIndex = 0;

  bool get isMyPropertyCard {
    if (widget.propertyCard == null) return false;

    return (widget.propertyCard?.currentAgent is String &&
            getIt<AuthBloc>().state.agent?.id ==
                widget.propertyCard?.currentAgent) ||
        (widget.propertyCard?.currentAgent is Map &&
            getIt<AuthBloc>().state.agent?.id ==
                widget.propertyCard?.currentAgent['id']);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return SliverAppBar(
      expandedHeight: 250.0,
      floating: false,
      pinned: true,
      elevation: widget.isScrolled ? 4 : 0,
      backgroundColor: colorScheme.primary,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: widget.isScrolled
            ? Text(
                'Ref: ${widget.propertyCard?.referenceNumber ?? ""}',
                style: textTheme.titleSmall?.copyWith(
                  color: colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              )
            : null,
        background: widget.propertyCard == null ||
                widget.propertyCard?.photos.isEmpty == true
            ? Container(
                color: colorScheme.primary,
                child: Center(
                  child: Icon(
                    Icons.home_work_outlined,
                    size: 80,
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
              )
            : _buildImageCarousel(context),
      ),
      actions: [
        // PDF download button
        if (widget.propertyCard != null)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                launchUrlString(
                    "https://alba.homes/download-pocket/${widget.propertyCard?.id ?? ""}?source=agentApp");
              },
              icon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.file_download_outlined,
                  color: Colors.white,
                ),
              ),
              tooltip: "Download PDF",
            ),
          ),
        if (isMyPropertyCard)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                showAddPhotosDialog(context, widget.propertyCard?.photos);
              },
              icon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                ),
              ),
              tooltip: "Add Photos",
            ),
          ),
      ],
    );
  }

  Widget _buildImageCarousel(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Stack(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 250,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: widget.propertyCard!.photos.length > 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentImageIndex = index;
              });
            },
          ),
          items: widget.propertyCard!.photos.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return InkWell(
                  onTap: () {
                    context.pushNamed(ImageViewerScreen.routeName,
                        pathParameters: {'url': item.original});
                  },
                  child: Container(
                    width: mediaQuery.size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    child: S3Image(
                      url: item.original,
                      fit: BoxFit.cover,
                      placeHolder: Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),

        // Indicators for multiple images
        if (widget.propertyCard!.photos.length > 1)
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  widget.propertyCard!.photos.asMap().entries.map((entry) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentImageIndex == entry.key
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white.withOpacity(0.5),
                  ),
                );
              }).toList(),
            ),
          ),

        // Navigation arrows for multiple images
        if (widget.propertyCard!.photos.length > 1) ...[
          Positioned(
            left: 10,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              onPressed: () {
                _carouselController.previousPage();
              },
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              onPressed: () {
                _carouselController.nextPage();
              },
            ),
          ),
        ],
      ],
    );
  }
}
