import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/cubit/expired_hot_lead_explorer_cubit.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/widgets/expired_hot_lead_card.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/widgets/filter_lead_source.dart';

class ExpiredHotLeadExplorer extends StatelessWidget {
  static const routeName = '/ExpiredHotLeadExplorer';
  const ExpiredHotLeadExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExpiredHotLeadExplorerCubit>(),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hot Lead Explorer"),centerTitle: true,),body: BlocBuilder<ExpiredHotLeadExplorerCubit, ExpiredHotLeadExplorerState>(
      builder: (context, state) {
        return Column(children: [
          LeadSourceFilter(state: state),
          Expanded(child: RefreshIndicator(
            onRefresh: ()async{
             await context.read<ExpiredHotLeadExplorerCubit>().getExpiredHotLeads(refresh: true);
            },
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if(notification.metrics.pixels >= notification.metrics.maxScrollExtent * 0.8){
                  context.read<ExpiredHotLeadExplorerCubit>().getExpiredHotLeads();
                }
                return true;
              },
              child: ListView.separated(itemBuilder: (context,index){
                final card = state.expiredHotLeads[index];
                return ExpiredHotLeadCard(
                  lastExpiredAt: DateFormat.yMEd().format( card.lastExpirationRecord.createdAt),
                  leadSource: card.lastExpirationRecord.lead.leadSource.name,
                  agentName: card.lastExpirationRecord.agent.name,
                  agentPhone: card.lastExpirationRecord.agent.phone,
                  name: card.lastExpirationRecord.lead.name,
                  agentInitials: card.lastExpirationRecord.agent.photo ?? '',
                  expirationCount: card.numberOfExpirations,
                  onAssign: ()async {
                  await  context.read<ExpiredHotLeadExplorerCubit>().checkOutLead(context: context, card: card);
                  },
              
                );
              }, separatorBuilder: (context,index) => SizedBox(height: 8,), itemCount: state.expiredHotLeads.length),
            ),
          ))
        ],);
      },
    ),);
  }
}
