import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/space.dart';

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

class _CallFeedbackScreenBody extends StatelessWidget {
  const _CallFeedbackScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Feedback'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              AppTextField(
                name: 'number',
                label: 'Phone Number',
                value: getIt<AuthBloc>().state.lastCalledNumber,
                disabled: getIt<AuthBloc>().state.lastCalledNumber != null,
              ),
              BlocSelector<CallFeedbackCubit, CallFeedbackState, String?>(
                selector: (state) {
                  return state.feedback;
                },
                builder: (context, feedback) {
                  return MultiLineField(
                    name: 'feedback',
                    label: 'Feedback',
                    value: feedback,
                  );
                },
              ),
              VerticalSmallGap(),
              AppPrimaryButton(text: 'Submit', onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
