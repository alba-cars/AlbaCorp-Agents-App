import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/department_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/ticket_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/property_price.dart';
import 'package:real_estate_app/view/add_ticket_screen/cubit/add_ticket_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/attachment_field.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:recase/recase.dart';

class AddTicketScreen extends StatelessWidget {
  static const routeName = '/AddTicketScreen';
  const AddTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddTicketCubit>(),
      child: _AddTicketScreenLayout(),
    );
  }
}

class _AddTicketScreenLayout extends StatefulWidget {
  const _AddTicketScreenLayout({super.key});

  @override
  State<_AddTicketScreenLayout> createState() => _AddTicketScreenLayoutState();
}

class _AddTicketScreenLayoutState extends State<_AddTicketScreenLayout> {
  late final GlobalKey<FormBuilderState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, hasInnerScrolled) {
              return [
                SliverAppBar(
                  title: Text('Add Ticket'),
                  centerTitle: true,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
              ];
            },
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: FormBuilder(
                    key: _formKey,
                    child: Column(
                      children: [
                        VerticalSmallGap(
                          adjustment: 2,
                        ),
                        WrapSelectField(
                          name: 'requestType',
                          label: 'Request Type',
                          values: RequestType.values,
                          isRequired: true,
                          valueTransformer: (p0) => p0?.value,
                          displayOption: (option) => option.name.titleCase,
                        ),
                        WrapSelectField(
                          name: 'priority',
                          label: 'Priority',
                          values: ['Minor', 'Major', 'Critical'],
                          isRequired: true,
                        ),
                        BlocSelector<AddTicketCubit, AddTicketState,
                            List<Department>>(
                          selector: (state) {
                            return state.departments;
                          },
                          builder: (context, departments) {
                            return DropDownfield(
                                label: 'Department',
                                items: departments,
                                displayOption: (option) =>
                                    option.departmentName,
                                selectValue: (p0) => p0?.id,
                                name: 'department');
                          },
                        ),
                        BlocSelector<AddTicketCubit, AddTicketState,
                            List<Property>>(
                          selector: (state) {
                            return state.properties;
                          },
                          builder: (context, properties) {
                            return AppAutoComplete<Property>(
                                name: 'property',
                                label: "Property",
                                isRequired: false,
                                valueTransformer: (p0) => p0?.id,
                                displayStringForOption: (option) {
                                  final types = context
                                      .read<AddTicketCubit>()
                                      .state
                                      .propertyTypeList;
                                  return "${option.referNo} | ${types.firstWhereOrNull((element) => element.id == option.propertyTypeId)?.propertyType ?? ''} | ${option.communityName}";
                                },
                                optionsBuilder: (v) async {
                                  return properties.where(
                                      (e) => e.propertyTitle.contains(v.text));
                                });
                          },
                        ),
                        AppAutoComplete<Deal>(
                            name: 'deal',
                            label: "Deal",
                            isRequired: false,
                            valueTransformer: (p0) => p0?.id,
                            displayStringForOption: (deal) =>
                                "${deal.referenceNumber} | ${deal.propertyList?.communityName ?? deal.newListingRequest?.community?.community ?? ''} | AED ${deal.agreedSalePrice?.toInt()}",
                            optionsBuilder: (v) async {
                              return context
                                  .read<AddTicketCubit>()
                                  .getAgentDeals(v.text);
                            }),
                        AppAutoComplete<Lead>(
                            name: 'client',
                            label: "Client",
                            isRequired: false,
                            valueTransformer: (p0) => p0?.id,
                            displayStringForOption: (client) =>
                                "${client.firstName} ${client.lastName}",
                            optionsBuilder: (v) async {
                              return context
                                  .read<AddTicketCubit>()
                                  .getAgentLeads(v.text);
                            }),
                        MultiLineField(
                          name: 'description',
                          label: 'Description',
                        ),
                        AttachmentField(
                          name: 'attachments',
                          label: 'Attachments',
                        ),
                        VerticalSmallGap(
                          adjustment: 2,
                        ),
                        AppPrimaryButton(
                            text: 'Add Ticket',
                            onTap: () async {
                              await context.read<AddTicketCubit>().addTicket(
                                  formKey: _formKey, context: context);
                            }),
                        VerticalSmallGap(
                          adjustment: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
