import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/view/leads_screen/cubit/leads_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/text.dart';

void showReturnLeadsDialog(
  BuildContext context,
) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "return-leads-dialog",
      pageBuilder: (dContext, anim1, anim2) {
        return BlocProvider.value(
          value: context.read<LeadsCubit>(),
          child: Builder(builder: (context) {
            return RetunLeadsDialog();
          }),
        );
      });
}

class RetunLeadsDialog extends StatefulWidget {
  const RetunLeadsDialog({
    super.key,
  });

  @override
  State<RetunLeadsDialog> createState() => _RetunLeadsDialogState();
}

class _RetunLeadsDialogState extends State<RetunLeadsDialog> {
  bool freshSelected = true;
  bool followUpSelected = false;
  bool lostSelected = true;
  bool disqualifiedSelected = true;
  bool wonSelected = false;
  bool dealSelected = false;
  bool prospectSelected = false;
  Map<LeadStatus, bool> selectedGroups = {
    LeadStatus.Fresh: true,
    LeadStatus.FollowUp: false,
    LeadStatus.Lost: true,
    LeadStatus.Disqualified: true,
    LeadStatus.Won: false,
    LeadStatus.Deal: false,
    LeadStatus.Prospect: false,
  };

  Map<LeadStatus?, List<Lead>> groupedLeads = {};
  @override
  void initState() {
    final leads = context.read<LeadsCubit>().state.leads;
    groupedLeads = groupBy(leads, (v) => v.leadStatus);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlockTitleText(text: 'Return Leads'),
            SizedBox(
              height: 24,
            ),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title: Text(
                    'Fresh (${groupedLeads[LeadStatus.Fresh]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.Fresh],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.Fresh] = v;
                  setState(() {});
                }),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title: Text(
                    'Follow Up (${groupedLeads[LeadStatus.FollowUp]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.FollowUp],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.FollowUp] = v;
                  setState(() {});
                }),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title: Text(
                    'Lost (${groupedLeads[LeadStatus.Lost]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.Lost],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.Lost] = v;
                  setState(() {});
                }),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title: Text(
                    'Diqualified (${groupedLeads[LeadStatus.Disqualified]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.Disqualified],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.Disqualified] = v;
                  setState(() {});
                }),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title:
                    Text('Won (${groupedLeads[LeadStatus.Won]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.Won],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.Won] = v;
                  setState(() {});
                }),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title: Text(
                    'Deal (${groupedLeads[LeadStatus.Deal]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.Deal],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.Deal] = v;
                  setState(() {});
                }),
            CheckboxListTile.adaptive(
                visualDensity: VisualDensity.compact,
                title: Text(
                    'Prospect (${groupedLeads[LeadStatus.Prospect]?.length ?? 0})'),
                value: selectedGroups[LeadStatus.Prospect],
                onChanged: (v) {
                  if (v != null) selectedGroups[LeadStatus.Prospect] = v;
                  setState(() {});
                }),
            SizedBox(
              height: 12,
            ),
            AppPrimaryButton(
                text: 'Return',
                onTap: () async {
                  final List<String> returnLeadIds = [];
                  groupedLeads.forEach((key, value) {
                    if (selectedGroups.containsKey(key)) {
                      returnLeadIds.addAll(groupedLeads[key]!.map((e) => e.id));
                    }
                  });
                  await context.read<LeadsCubit>().returnLeadInBulkFromDialog(
                      context: context, leads: returnLeadIds);
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}
