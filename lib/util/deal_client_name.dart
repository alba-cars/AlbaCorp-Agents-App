import '../model/deal_model.dart';

getDealClientName(Deal deal) {
  if (deal.category == 'Primary Off Plan Property') {
    return '${deal.client?.firstName ?? ''} ${deal.client?.lastName ?? ''}';
  } else {}
}
