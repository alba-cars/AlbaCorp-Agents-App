import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/view/deal_details_screen/widgets/info_label_value.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/listing_detail_screen/cubit/listing_detail_cubit.dart';
import 'package:real_estate_app/view/listing_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../util/status.dart';

class ListingDetailsScreen extends StatelessWidget {
  static const routeName = '/listingDetailsScreen';
  const ListingDetailsScreen({super.key, required this.listingId});
  final String listingId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ListingDetailCubit>(param1: listingId),
      child: ListingDetailScreenLayout(),
    );
  }
}

class ListingDetailScreenLayout extends StatefulWidget {
  const ListingDetailScreenLayout({super.key});

  @override
  State<ListingDetailScreenLayout> createState() =>
      _ListingDetailScreenLayoutState();
}

class _ListingDetailScreenLayoutState extends State<ListingDetailScreenLayout> {
  @override
  void initState() {
    context.read<ListingDetailCubit>().getListingDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocSelector<ListingDetailCubit, ListingDetailState, Property?>(
          selector: (state) {
            return state.listing;
          },
          builder: (context, listing) {
            final status =
                context.read<ListingDetailCubit>().getListingDetails();
            if (status == AppStatus.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (listing == null) {
              return SizedBox();
            }
            final primaryColor = Theme.of(context).colorScheme.primary;
            return CustomScrollView(
              slivers: [
                SliverAppBar(),
                SliverToBoxAdapter(
                    child: CarouselSlider.builder(
                        itemCount: listing.images?.length ?? 0,
                        itemBuilder: (context, index, _) {
                          if (listing.images == null ||
                              listing.images?.isEmpty == true) {
                            return Container(
                              color: Colors.black,
                            );
                          }
                          String? image;
                          if (listing.images?.isNotEmpty == true) {
                            image = listing.images![index] is String
                                ? listing.images![index]
                                : listing.images![index]['thumbnail'];
                          }

                          return InkWell(
                              onTap: () {
                                context.pushNamed(ImageViewerScreen.routeName,
                                    pathParameters: {'url': image!});
                              },
                              child: S3Image(url: image));
                        },
                        options: CarouselOptions(height: 350))),
                SliverVerticalSmallGap(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(
                          text: 'AED ' + (listing.askingPrice?.currency ?? ''),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        VerticalSmallGap(),
                        LabelText(text: listing.propertyTitle),
                        VerticalSmallGap(),
                        NormalText(
                          text:
                              "${listing.street}, ${listing.communityName ?? ''}",
                          color: Colors.blueGrey,
                        ),
                        VerticalSmallGap(),
                        Row(
                          children: [
                            Expanded(
                              child: TextWithIcon(
                                text: listing.listingType,
                                icon: CupertinoIcons.arrow_right_arrow_left,
                                iconColor: primaryColor,
                                iconSize: 18,
                              ),
                            ),
                            Expanded(
                              child: TextWithIcon(
                                text: listing.beds?.toString() ?? '0',
                                iconPath: 'assets/images/bed.png',
                                iconColor: primaryColor,
                                iconSize: 18,
                              ),
                            ),
                            Expanded(
                              child: TextWithIcon(
                                text: listing.baths ?? '0',
                                iconPath: 'assets/images/shower.png',
                                iconColor: primaryColor,
                                iconSize: 18,
                              ),
                            ),
                            Expanded(
                              child: TextWithIcon(
                                text: (listing.size?.currency ?? '0') + ' Sqft',
                                iconPath: 'assets/images/area.png',
                                iconColor: primaryColor,
                                iconSize: 18,
                              ),
                            ),
                          ],
                        ),
                        VerticalSmallGap(),
                        NormalText(
                          text: 'Reference No. : ${listing.referNo}',
                          color: primaryColor,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                SliverDivider(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlockTitleText(
                          text: 'Agent',
                        ),
                        VerticalSmallGap(),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: S3Image(
                                url: listing.agent?.user.photo,
                              ),
                            ),
                            HorizontalSmallGap(),
                            LabelText(
                                text:
                                    "${listing.agent?.user.firstName ?? ''} ${listing.agent?.user.lastName ?? ''}")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SliverDivider(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlockTitleText(
                          text: 'Pricing Info',
                        ),
                        VerticalSmallGap(),
                        TitleValueWithDividerAtBottom(
                            title: 'Asking Price',
                            value:
                                'AED ' + (listing.askingPrice?.currency ?? '')),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                        TitleValueWithDividerAtBottom(
                            title: 'Price Drop',
                            value: (listing.pricedrop != null ||
                                        listing.pricedrop?.isEmpty == false
                                    ? 'AED '
                                    : "N/A") +
                                (listing.pricedrop ?? '')),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                        TitleValueWithDividerAtBottom(
                            title: 'Commission',
                            value: 'AED ' +
                                ((double.tryParse(listing.commission) ?? 0) *
                                        (listing.askingPrice ?? 0) /
                                        100)
                                    .currency),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverDivider(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlockTitleText(
                          text: 'Location Info',
                        ),
                        VerticalSmallGap(),
                        InfoLabelValue(
                          labelOne: 'Community',
                          valueOne: listing.communityName,
                          labelTwo: 'Sub Community',
                          valueTwo: listing.subCommunity,
                        ),
                        InfoLabelValue(
                          labelOne: 'Building',
                          valueOne: listing.buildingName,
                          labelTwo: 'Street',
                          valueTwo: listing.street,
                        ),
                        InfoLabelValue(
                          labelOne: 'Emirate',
                          valueOne: listing.emirate,
                          labelTwo: 'DEWA No.',
                          valueTwo: listing.dewaNo,
                        ),
                        if (listing.lat != null && listing.lng != null)
                          SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: GoogleMap(
                                markers: {
                                  Marker(
                                      markerId: MarkerId('dddd'),
                                      position: LatLng(
                                          double.tryParse(listing.lat!) ?? 0,
                                          double.tryParse(listing.lng!) ?? 0))
                                },
                                initialCameraPosition: CameraPosition(
                                    zoom: 15,
                                    target: LatLng(
                                        double.tryParse(listing.lat!) ?? 0,
                                        double.tryParse(listing.lng!) ?? 0)),
                              ),
                            ),
                          ),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverDivider(),
                BlocSelector<ListingDetailCubit, ListingDetailState,
                    List<Activity>>(
                  selector: (state) {
                    return state.activities;
                  },
                  builder: (context, activities) {
                    return SliverToBoxAdapter(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BlockTitleText(text: 'Activities'),
                            VerticalSmallGap(),
                            Flexible(
                                child: ActivityList(
                              activities: activities,
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
