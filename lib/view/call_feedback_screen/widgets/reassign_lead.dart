import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../app/auth_bloc/auth_bloc.dart';

class ReAssignLead extends StatelessWidget {
  const ReAssignLead({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CallFeedbackCubit, CallFeedbackState, bool>(
      selector: (state) {
        return state.leadIsReAssignable;
      },
      builder: (context, leadIsReAssignable) {
        if (!leadIsReAssignable &&
            context.read<CallFeedbackCubit>().state.lead?.currentAgent?.id !=
                getIt<AuthBloc>().state.agent?.id) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: NormalText(
                      text:
                          "This lead will not be reassigned to you. Please contact admin for any request",
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(4)),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: NormalText(
                    text: "This lead will be reassigned to you",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
