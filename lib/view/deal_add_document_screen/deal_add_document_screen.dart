import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/deal_add_document_screen/cubit/deal_add_document_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/document_upload_field_multi.dart';

import '../../widgets/fields/document_upload_field.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';

class DealAddDocumentScreen extends StatelessWidget {
  static const routeName = '/dealAddDocumentScreen/:id';
  const DealAddDocumentScreen(
      {super.key,
      required this.dealId,
      required this.userId,
      this.isEdit = false,
      this.dealDocuments});

  final String dealId;
  final String userId;
  final bool isEdit;
  final List<DealDocument>? dealDocuments;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<DealAddDocumentCubit>(param1: dealId, param2: userId)
            ..setParams(documents: dealDocuments, edit: isEdit),
      child: _DealAddDocumentScreenLayout(),
    );
  }
}

class _DealAddDocumentScreenLayout extends StatefulWidget {
  const _DealAddDocumentScreenLayout();

  @override
  State<_DealAddDocumentScreenLayout> createState() =>
      _DealAddDocumentScreenLayoutState();
}

class _DealAddDocumentScreenLayoutState
    extends State<_DealAddDocumentScreenLayout> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.read<DealAddDocumentCubit>().edit
            ? "Edit Documents"
            : 'Add Documents'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: CollectDocumentsForm(
              formKey: _formKey,
            ),
          ),
          VerticalSmallGap(),
          AppPrimaryButton(
              text: context.read<DealAddDocumentCubit>().edit ? 'Save' : 'Add',
              onTap: () async {
                final validated = _formKey.currentState?.saveAndValidate();
                if (validated == true) {
                  final val = _formKey.currentState!.value;
                  await context
                      .read<DealAddDocumentCubit>()
                      .addDealDocuments(context: context, values: val);
                }
              }),
          VerticalSmallGap(),
        ],
      ),
    );
  }
}

class CollectDocumentsForm extends StatelessWidget {
  const CollectDocumentsForm(
      {super.key, required GlobalKey<FormBuilderState> formKey})
      : _formKey = formKey;
  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        initialValue: context.read<DealAddDocumentCubit>().value,
        child: ScrollShadow(
          size: 12,
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: BlocSelector<DealAddDocumentCubit, DealAddDocumentState,
                  AppStatus>(
                selector: (state) {
                  return state.getDealStatus;
                },
                builder: (context, getDealStatus) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSmallGap(
                        adjustment: 2,
                      ),
                      Divider(
                        thickness: 4,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      LabelText(
                        text: 'Deal Documents',
                      ),
                      Divider(
                        thickness: 4,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      VerticalSmallGap(
                        adjustment: 0.5,
                      ),
                      DocumentSelectionField(
                        onSelected: (v) {},
                        isEditting: false,
                        name: 'Title Deed',
                        label: 'Title Deed',
                      ),
                      DocumentSelectionField(
                        onSelected: (v) {},
                        isEditting: false,
                        name: 'Ejari',
                        label: 'Ejari',
                      ),
                      VerticalSmallGap(),
                      if (context
                              .read<DealAddDocumentCubit>()
                              .state
                              .deal
                              ?.category ==
                          "Primary Off Plan Property") ...[
                        Divider(
                          thickness: 4,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        LabelText(
                          text: 'Client Documents',
                        ),
                        Divider(
                          thickness: 4,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                        DocumentSelectionField(
                          onSelected: (v) {},
                          isEditting: false,
                          name: 'EID',
                          label: 'Emirates Id',
                        ),
                        DocumentSelectionField(
                          onSelected: (v) {},
                          isEditting: false,
                          name: 'Passport',
                          label: 'Passport',
                        ),
                      ],
                      if (context
                              .read<DealAddDocumentCubit>()
                              .state
                              .deal
                              ?.category ==
                          "Secondary Market Property") ...[
                        Divider(
                          thickness: 4,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        LabelText(
                          text: 'Buyer Documents',
                        ),
                        Divider(
                          thickness: 4,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                        if (context
                                .read<DealAddDocumentCubit>()
                                .state
                                .deal
                                ?.buyerInternalUserId !=
                            null) ...[
                          DocumentSelectionField(
                            onSelected: (v) {},
                            isEditting: false,
                            name: 'buyer.EID',
                            label: 'Emirates Id',
                          ),
                          DocumentSelectionField(
                            onSelected: (v) {},
                            isEditting: false,
                            name: 'buyer.Passport',
                            label: 'Passport',
                          ),
                        ],
                        if (context
                                .read<DealAddDocumentCubit>()
                                .state
                                .deal
                                ?.buyerExternalUserId !=
                            null) ...[
                          DocumentSelectionField(
                            onSelected: (v) {},
                            isEditting: false,
                            name: 'buyer.trade_license',
                            label: 'Trade License',
                          ),
                        ],
                        Divider(
                          thickness: 4,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        LabelText(
                          text: 'Seller Documents',
                        ),
                        Divider(
                          thickness: 4,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        VerticalSmallGap(
                          adjustment: 0.5,
                        ),
                        if (context
                                .read<DealAddDocumentCubit>()
                                .state
                                .deal
                                ?.sellerInternalUserId !=
                            null) ...[
                          DocumentSelectionField(
                            onSelected: (v) {},
                            isEditting: false,
                            name: 'seller.EID',
                            label: 'Emirates Id',
                          ),
                          DocumentSelectionField(
                            onSelected: (v) {},
                            isEditting: false,
                            name: 'seller.Passport',
                            label: 'Passport',
                          ),
                        ],
                        if (context
                                .read<DealAddDocumentCubit>()
                                .state
                                .deal
                                ?.sellerExternalUserId !=
                            null) ...[
                          DocumentSelectionField(
                            onSelected: (v) {},
                            isEditting: false,
                            name: 'buyer.trade_license',
                            label: 'Trade License',
                          ),
                        ],
                      ],
                      MultiDocumentUploadField(
                        name: 'Other',
                        label: 'Other Documents',
                      ),
                      VerticalSmallGap(
                        adjustment: 2,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}
