import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/view/deal_add_document_screen/deal_add_document_screen.dart';
import 'package:real_estate_app/view/deal_details_screen/cubit/deal_details_cubit.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/pdf_view_screen/pdf_view_screen.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:recase/recase.dart';

import '../../../widgets/text.dart';

enum FileType { pdf, image, doc, unKnown }

class DocumentsTabView extends StatelessWidget {
  const DocumentsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocSelector<DealDetailsCubit, DealDetailsState, Deal?>(
              selector: (state) {
                return state.deal;
              },
              builder: (context, deal) {
                return Row(
                  children: [
                    Expanded(child: TitleText(text: 'Deal Details')),
                    TextButton(
                        onPressed: () async {
                          if (deal != null) {
                            final dealDocuments = context
                                .read<DealDetailsCubit>()
                                .state
                                .dealDocuments;
                            final userDocuments = context
                                .read<DealDetailsCubit>()
                                .state
                                .userDocuments;
                            final buyerDocuments = context
                                .read<DealDetailsCubit>()
                                .state
                                .buyerDocuments;
                            final sellerDocuments = context
                                .read<DealDetailsCubit>()
                                .state
                                .sellerDocuments;
                            final sellerExternalDocuments = context
                                .read<DealDetailsCubit>()
                                .state
                                .buyerExternalDocuments;
                            final buyerExternalDocuments = context
                                .read<DealDetailsCubit>()
                                .state
                                .sellerExternalDocuments;
                            final d = [
                              ...dealDocuments.map((e) => e.toJson()).toList(),
                              ...userDocuments.map((e) => e.toJson()).toList(),
                              ...buyerDocuments.map((e) => e.toJson()).toList(),
                              ...sellerDocuments
                                  .map((e) => e.toJson())
                                  .toList(),
                              ...sellerExternalDocuments
                                  .map((e) => e.toJson())
                                  .toList(),
                              ...buyerExternalDocuments
                                  .map((e) => e.toJson())
                                  .toList()
                            ];
                            final result = await context.pushNamed<bool>(
                                DealAddDocumentScreen.routeName,
                                pathParameters: {
                                  'id': deal.id
                                },
                                queryParameters: {
                                  'userId': deal.client?.id,
                                  'isEdit': 'true',
                                  "dealDocuments": json.encode(d)
                                });
                            if (result == true) {
                              context.read<DealDetailsCubit>().getDeal();
                            }
                          }
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 18,
                            ),
                            Text('Edit')
                          ],
                        ))
                  ],
                );
              },
            ),
          ),
          BlocSelector<DealDetailsCubit, DealDetailsState, List<DealDocument>>(
            selector: (state) => state.userDocuments,
            builder: (context, userDocuments) {
              if (context.read<DealDetailsCubit>().state.deal?.category ==
                  'Secondary Market Property') {
                return SizedBox();
              }
              return DocumentListWidget(
                title: 'Client Documents',
                documents: userDocuments,
              );
            },
          ),
          BlocSelector<DealDetailsCubit, DealDetailsState, List<DealDocument>>(
            selector: (state) => state.buyerDocuments,
            builder: (context, buyerDocuments) {
              if (context.read<DealDetailsCubit>().state.deal?.category !=
                  'Secondary Market Property') {
                return SizedBox();
              }
              if (context
                      .read<DealDetailsCubit>()
                      .state
                      .deal
                      ?.sellerExternalUser !=
                  null) {
                return DocumentListWidget(
                  title: 'Buyer Documents',
                  documents: context
                      .read<DealDetailsCubit>()
                      .state
                      .sellerExternalDocuments,
                );
              }
              return DocumentListWidget(
                title: 'Buyer Documents',
                documents: buyerDocuments,
              );
            },
          ),
          BlocSelector<DealDetailsCubit, DealDetailsState, List<DealDocument>>(
            selector: (state) => state.sellerDocuments,
            builder: (context, sellerDocuments) {
              if (context.read<DealDetailsCubit>().state.deal?.category !=
                  'Secondary Market Property') {
                return SizedBox();
              }
              if (context
                      .read<DealDetailsCubit>()
                      .state
                      .deal
                      ?.buyerExternalUser !=
                  null) {
                return DocumentListWidget(
                  title: 'Buyer Documents',
                  documents: context
                      .read<DealDetailsCubit>()
                      .state
                      .buyerExternalDocuments,
                );
              }
              return DocumentListWidget(
                title: 'Seller Documents',
                documents: sellerDocuments,
              );
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Deal Documents',
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BlocSelector<DealDetailsCubit, DealDetailsState,
                    List<DealDocument>>(
                selector: (state) => state.dealDocuments,
                builder: (context, dealDocuments) {
                  if (dealDocuments.isEmpty) {
                    return Text('No documents found for deal');
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: dealDocuments.map((e) {
                      // final FileType fileType =
                      //     switch (e.path.split('.').last) {
                      //   'jpg' || 'png' || 'jpeg' => FileType.image,
                      //   'pdf' => FileType.pdf,
                      //   _ => FileType.unKnown
                      // };
                      if (e.path != null) {
                        return Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(4),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            children: [
                              switch (e.path!.split('.').last) {
                                'jpg' ||
                                'png' ||
                                'jpeg' ||
                                'webp' =>
                                  Icon(Icons.image),
                                'pdf' => Icon(Icons.picture_as_pdf),
                                _ => Icon(Icons.device_unknown)
                              },
                              HorizontalSmallGap(),
                              Text(e.type),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    switch (e.path!.split('.').last) {
                                      case 'jpg' || 'png' || 'jpeg' || 'webp':
                                        context.pushNamed(
                                            ImageViewerScreen.routeName,
                                            pathParameters: {'url': e.path!});
                                        break;
                                      case 'pdf':
                                        context.pushNamed(
                                            PdfViewScreen.routeName,
                                            pathParameters: {'url': e.path!});
                                        break;
                                      default:
                                        break;
                                    }
                                  },
                                  icon: Icon(Icons.remove_red_eye))
                            ],
                          ),
                        );
                      } else if (e.documents != null) {
                        return Column(
                          children: e.documents!
                              .map((path) => Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(4),
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.blueGrey),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      children: [
                                        switch (path!.split('.').last) {
                                          'jpg' ||
                                          'png' ||
                                          'jpeg' ||
                                          'webp' =>
                                            Icon(Icons.image),
                                          'pdf' => Icon(Icons.picture_as_pdf),
                                          _ => Icon(Icons.device_unknown)
                                        },
                                        HorizontalSmallGap(),
                                        Text(e.type),
                                        Spacer(),
                                        IconButton(
                                            onPressed: () {
                                              switch (path!.split('.').last) {
                                                case 'jpg' ||
                                                      'png' ||
                                                      'jpeg' ||
                                                      'webp':
                                                  context.pushNamed(
                                                      ImageViewerScreen
                                                          .routeName,
                                                      pathParameters: {
                                                        'url': path!
                                                      });
                                                  break;
                                                case 'pdf':
                                                  context.pushNamed(
                                                      PdfViewScreen.routeName,
                                                      pathParameters: {
                                                        'url': path!
                                                      });
                                                  break;
                                                default:
                                                  break;
                                              }
                                            },
                                            icon: Icon(Icons.remove_red_eye))
                                      ],
                                    ),
                                  ))
                              .toList(),
                        );
                      }
                      return SizedBox();
                    }).toList(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class DocumentListWidget extends StatelessWidget {
  const DocumentListWidget({
    super.key,
    required this.title,
    required this.documents,
  });
  final String title;
  final List<DealDocument> documents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Row(
            children: [
              BlockTitleText(
                text: title,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: documents.isEmpty
                ? Row(
                    children: [
                      Text('No documents found.'),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: documents.map((e) {
                      // final FileType fileType =
                      //     switch (e.path.split('.').last) {
                      //   'jpg' || 'png' || 'jpeg' => FileType.image,
                      //   'pdf' => FileType.pdf,
                      //   _ => FileType.unKnown
                      // };
                      if (e.path != null) {
                        return Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(4),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            children: [
                              switch (e.path!.split('.').last) {
                                'jpg' ||
                                'png' ||
                                'jpeg' ||
                                'webp' =>
                                  Icon(Icons.image),
                                'pdf' => Icon(Icons.picture_as_pdf),
                                _ => Icon(Icons.device_unknown)
                              },
                              HorizontalSmallGap(),
                              Text(e.type.titleCase),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    switch (e.path!.split('.').last) {
                                      case 'jpg' || 'png' || 'jpeg' || 'webp':
                                        context.pushNamed(
                                            ImageViewerScreen.routeName,
                                            pathParameters: {'url': e.path!});
                                        break;
                                      case 'pdf':
                                        context.pushNamed(
                                            PdfViewScreen.routeName,
                                            pathParameters: {'url': e.path!});
                                        break;
                                      default:
                                        break;
                                    }
                                  },
                                  icon: Icon(Icons.remove_red_eye))
                            ],
                          ),
                        );
                      } else if (e.documents != null) {
                        return Column(
                          children: e.documents!
                              .map((path) => Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(4),
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.blueGrey),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      children: [
                                        switch (path!.split('.').last) {
                                          'jpg' ||
                                          'png' ||
                                          'jpeg' ||
                                          'webp' =>
                                            Icon(Icons.image),
                                          'pdf' => Icon(Icons.picture_as_pdf),
                                          _ => Icon(Icons.device_unknown)
                                        },
                                        HorizontalSmallGap(),
                                        Text(e.type),
                                        Spacer(),
                                        IconButton(
                                            onPressed: () {
                                              switch (path!.split('.').last) {
                                                case 'jpg' ||
                                                      'png' ||
                                                      'jpeg' ||
                                                      'webp':
                                                  context.pushNamed(
                                                      ImageViewerScreen
                                                          .routeName,
                                                      pathParameters: {
                                                        'url': path!
                                                      });
                                                  break;
                                                case 'pdf':
                                                  context.pushNamed(
                                                      PdfViewScreen.routeName,
                                                      pathParameters: {
                                                        'url': path!
                                                      });
                                                  break;
                                                default:
                                                  break;
                                              }
                                            },
                                            icon: Icon(Icons.remove_red_eye))
                                      ],
                                    ),
                                  ))
                              .toList(),
                        );
                      }
                      return SizedBox();
                    }).toList(),
                  )),
      ],
    );
  }
}
