import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/view/deal_details_screen/cubit/deal_details_cubit.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/pdf_view_screen/pdf_view_screen.dart';
import 'package:real_estate_app/widgets/space.dart';

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
          VerticalSmallGap(
            adjustment: 3,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Client Documents',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BlocSelector<DealDetailsCubit, DealDetailsState,
                    List<DealDocument>>(
                selector: (state) => state.userDocuments,
                builder: (context, userDocuments) {
                  if (userDocuments.isEmpty) {
                    return Text('No documents found for user');
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: userDocuments
                        .map((e) => Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.all(4),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(e.type),
                            ))
                        .toList(),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                BlockTitleText(
                  text: 'Deal Documents',
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
                      return Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(4),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          children: [
                            switch (e.path.split('.').last) {
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
                                  switch (e.path.split('.').last) {
                                    case 'jpg' || 'png' || 'jpeg' || 'webp':
                                      context.pushNamed(
                                          ImageViewerScreen.routeName,
                                          pathParameters: {'url': e.path});
                                      break;
                                    case 'pdf':
                                      context.pushNamed(PdfViewScreen.routeName,
                                          pathParameters: {'url': e.path});
                                      break;
                                    default:
                                      break;
                                  }
                                },
                                icon: Icon(Icons.remove_red_eye))
                          ],
                        ),
                      );
                    }).toList(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
