import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/currency_formatter.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../app/call_bloc/call_bloc.dart';
import '../../../constants/listing_status_color.dart';
import '../../../model/property_model.dart';
import '../../../util/color_category.dart';
import '../../../util/property_price.dart';
import '../../../widgets/s3_image.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../listing_detail_screen/listing_detail_screen.dart';

class ListingItem extends StatelessWidget {
  const ListingItem({super.key, required this.listing});
  final Property listing;

  @override
  Widget build(BuildContext context) {
    String? image;
    if (listing.images?.isNotEmpty == true) {
      image = listing.images!.first is String
          ? listing.images!.first
          : listing.images!.first['thumbnail'];
    }
    return Container(
      key: ValueKey(listing.id),
      height: 230,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: InkWell(
        onTap: () {
          context.pushNamed(ListingDetailsScreen.routeName,
              pathParameters: {'id': listing.id ?? ''});
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: double.maxFinite,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: S3Image(
                                      url: image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    left: 8,
                                    top: 8,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      decoration: BoxDecoration(
                                          color: listingStatusContainerColor(
                                              (listing.statusArray?.isNotEmpty == true
                                                      ? listing
                                                          .statusArray?.first
                                                      : '') ??
                                                  ''),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.fromBorderSide(BorderSide(
                                              color: listingStatusBorderColor(
                                                  (listing.statusArray?.isNotEmpty ==
                                                              true
                                                          ? listing.statusArray
                                                              ?.first
                                                          : '') ??
                                                      '')))),
                                      child:
                                          SmallText(text: listing.status ?? ''),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    HorizontalSmallGap(),
                    Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Ref. no:  ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(fontSize: 8)),
                              TextSpan(
                                  text: listing.referNo,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 10))
                            ])),
                            LabelText(
                              text: listing.propertyTitle,
                              maxLines: 2,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            VerticalSmallGap(
                              adjustment: 0.5,
                            ),
                            SmallText(
                              text: listing.communityName?.trim() ?? '',
                              maxLines: 2,
                            ),
                            if (listing.buildingName != null) ...[
                              SmallText(
                                text: listing.buildingName?.trim() ?? '',
                                maxLines: 2,
                              ),
                            ],
                            VerticalSmallGap(
                              adjustment: 0.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextWithIcon(
                                    text: (listing.beds?.toString() ?? "1"),
                                    iconPath: 'assets/images/bed.png',
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextWithIcon(
                                    text: (listing.baths?.toString() ?? "1"),
                                    iconPath: 'assets/images/shower.png',
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextWithIcon(
                                    text: (listing.size?.toInt().toString() ??
                                        "1"),
                                    iconPath: 'assets/images/area.png',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            VerticalSmallGap(
                              adjustment: 0.3,
                            ),
                            BlockTitleText(
                              text: 'AED ' +
                                  (getPrice(listing)?.toInt().currency ?? ''),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              VerticalSmallGap(
                adjustment: 0.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(.5)),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: S3Image(
                        url: listing.agent?.user.photo ?? '',
                        errorWidget: Image.asset(
                            'assets/images/person_placeholder.jpeg'),
                      ),
                    ),
                    HorizontalSmallGap(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: 'Agent'),
                          LabelText(text: listing.agent?.user.firstName ?? ''),
                        ],
                      ),
                    ),
                    if (listing.agent?.id != getIt<AuthBloc>().state.agent?.id)
                      IconButton.filledTonal(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary),
                          onPressed: () async {
                            final number = listing
                                .agent?.user.userPBXNumbers?.publicNumber;
                            if (number != null) {
                              getIt<CallBloc>().add(CallEvent.clickToCall(
                                phoneNumber: number,
                              ));
                            }
                          },
                          icon: Icon(
                            Icons.call,
                          ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
