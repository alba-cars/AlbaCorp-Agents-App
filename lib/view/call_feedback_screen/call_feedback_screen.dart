import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:lottie/lottie.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/phone_number_field.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../constants/hot_leads.dart';
import '../../util/color_category.dart';

class CallFeedbackScreen extends StatelessWidget {
  static const routeName = '/callFeedbackScreen';
  const CallFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<CallFeedbackCubit>(),
      child: _CallFeedbackScreenBody(),
    );
  }
}

class _CallFeedbackScreenBody extends StatefulWidget {
  const _CallFeedbackScreenBody();

  @override
  State<_CallFeedbackScreenBody> createState() =>
      _CallFeedbackScreenBodyState();
}

class _CallFeedbackScreenBodyState extends State<_CallFeedbackScreenBody> {
  late GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  late GlobalKey<FormBuilderState> _formNumberKey =
      GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        appBar: AppBar(
          title: Text('Feedback'),
          centerTitle: true,
        ),
        body: BlocConsumer<CallFeedbackCubit, CallFeedbackState>(
          listener: (context, state) async {
            if (state.checkLeadStatus == AppStatus.success &&
                state.lead == null) {
              getIt<AuthBloc>().add(AuthEvent.removeLastCallDetails());

              await getIt<AuthBloc>()
                  .stream
                  .firstWhere((state) => !state.showFeedbackScreen);
              context.goNamed("${HomePage.routeName}");
              context.pushNamed("${AddLeadScreen.routeName}", queryParameters: {
                "data": json.encode({
                  'phone': state.number,
                  "lead_source": 'Unkown Inbound Call'
                })
              });
              Logger().d('dddddddd');
            }
          },
          listenWhen: (previous, current) {
            return previous.checkLeadStatus != current.checkLeadStatus;
          },
          builder: (context, state) {
            if (state.requestNumber) {
              return SingleChildScrollView(
                reverse: true,
                child: FormBuilder(
                  key: _formNumberKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LottieBuilder.asset(
                            'assets/lottie/no_lead_found.json',
                            width: 300,
                            height: 300,
                          ),
                          VerticalSmallGap(),
                          TitleText(
                            text: "Please enter the number",
                            textAlign: TextAlign.center,
                          ),
                          VerticalSmallGap(),
                          PhoneNumberField(name: 'number'),
                          VerticalSmallGap(),
                          AppPrimaryButton(
                              text: 'Check lead',
                              onTap: () async {
                                final isValidated = _formNumberKey.currentState
                                    ?.saveAndValidate();
                                if (isValidated == true) {
                                  final number = _formNumberKey
                                          .currentState?.value['number'] ??
                                      '';
                                  context
                                      .read<CallFeedbackCubit>()
                                      .checkUerExist(numberEntered: number);
                                }
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
            if (state.checkLeadStatus == AppStatus.loading) {
              return Center(
                child: LottieBuilder.asset('assets/lottie/loading.json'),
              );
            }
            if (state.checkLeadStatus == AppStatus.failure) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Some Error Occurred"),
                    VerticalSmallGap(),
                    AppPrimaryButton(
                        text: 'Retry',
                        onTap: () {
                          context.read<CallFeedbackCubit>().checkUerExist();
                        })
                  ],
                ),
              );
            }
            if (state.checkLeadStatus == AppStatus.success &&
                state.lead == null) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                        'assets/lottie/no_lead_found.json',
                        width: 300,
                        height: 300,
                      ),
                      VerticalSmallGap(),
                      TitleText(
                        text: "No Existing Lead Found",
                        textAlign: TextAlign.center,
                      ),
                      VerticalSmallGap(),
                      SmallText(
                        text:
                            "The number is not associated with any lead in the database. Proceeding to add a new lead",
                        textAlign: TextAlign.center,
                      ),
                      VerticalSmallGap(),
                      AppPrimaryButton(
                          text: 'Create lead',
                          onTap: () async {
                            getIt<AuthBloc>()
                                .add(AuthEvent.removeLastCallDetails());

                            await getIt<AuthBloc>().stream.firstWhere(
                                (state) => !state.showFeedbackScreen);
                            context.goNamed("${HomePage.routeName}");
                            context.pushNamed("${AddLeadScreen.routeName}",
                                queryParameters: {
                                  'data': {
                                    'phone':
                                        getIt<AuthBloc>().state.lastCalledNumber
                                  }
                                });
                          })
                    ],
                  ),
                ),
              );
            }
            return SingleChildScrollView(
              reverse: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                        'assets/lottie/match_found.json',
                        repeat: false,
                        width: 200,
                        height: 200,
                      ),
                      TitleText(
                        text: "Found matching lead",
                        textAlign: TextAlign.center,
                      ),
                      VerticalSmallGap(),
                      SmallText(
                        text:
                            "A lead has been found matching to the number ${getIt<AuthBloc>().state.lastCalledNumber}. Updating the lead activity with the provided. ",
                        textAlign: TextAlign.center,
                        maxLines: 5,
                      ),
                      VerticalSmallGap(
                        adjustment: 2,
                      ),
                      BlocSelector<CallFeedbackCubit, CallFeedbackState, Lead?>(
                        selector: (state) {
                          return state.lead;
                        },
                        builder: (context, lead) {
                          if (lead != null) {
                            return LeadCard(lead: lead);
                          }
                          return SizedBox();
                        },
                      ),
                      VerticalSmallGap(
                        adjustment: 2,
                      ),
                      BlocSelector<CallFeedbackCubit, CallFeedbackState,
                          String?>(
                        selector: (state) {
                          return state.feedback;
                        },
                        builder: (context, feedback) {
                          return FormBuilder(
                            key: _formKey,
                            child: MultiLineField(
                              name: 'feedback',
                              placeHolder: 'Write a feedback...',
                              value: feedback,
                              validator: (val) {
                                if (val == null) {
                                  return 'This field is required';
                                } else if (val.length < 5) {
                                  return 'Feedback should be of minimum 5 characters';
                                }
                                return null;
                              },
                            ),
                          );
                        },
                      ),
                      VerticalSmallGap(
                        adjustment: 2,
                      ),
                      BlocListener<CallFeedbackCubit, CallFeedbackState>(
                        listener: (context, state) async {
                          if (state.addActivityStatus == AppStatus.success) {
                            getIt<AuthBloc>()
                                .add(AuthEvent.removeLastCallDetails());

                            await getIt<AuthBloc>().stream.firstWhere(
                                (state) => !state.showFeedbackScreen);
                            context.goNamed("${HomePage.routeName}");
                          }
                        },
                        listenWhen: (previous, current) =>
                            previous.addActivityStatus !=
                            current.addActivityStatus,
                        child: AppPrimaryButton(
                            text: 'Submit',
                            onTap: () async {
                              final validated =
                                  _formKey.currentState?.saveAndValidate();
                              if (validated == true) {
                                await context
                                    .read<CallFeedbackCubit>()
                                    .addActivity(
                                        feedback: _formKey.currentState!
                                                .value["feedback"] ??
                                            '');
                              }
                            }),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LeadCard extends StatelessWidget {
  const LeadCard({super.key, required this.lead});

  final Lead lead;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
        child: Row(children: [
          Container(
            width: 70,
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[100]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NormalText(
                  text: lead.leadSource,
                  textAlign: TextAlign.center,
                  color: Colors.grey[800]!,
                )
              ],
            ),
          ),
          HorizontalSmallGap(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.h),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blueGrey[100]),
                      child: SmallText(text: lead.leadStatus?.name ?? ''),
                    ),
                    HorizontalSmallGap(),
                    if (hotLeads.contains(lead.leadSource))
                      Image.asset(
                        'assets/images/flame.png',
                        height: 17,
                        width: 20,
                      )
                  ],
                ),
                VerticalSmallGap(
                  adjustment: .2,
                ),
                LabelText(text: "${lead.firstName} ${lead.lastName}"),
                if (lead.currentAgent != null)
                  NormalText(
                      text:
                          "Agent: ${lead.currentAgent?.user.firstName} ${lead.currentAgent?.user.lastName ?? ''}")
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
