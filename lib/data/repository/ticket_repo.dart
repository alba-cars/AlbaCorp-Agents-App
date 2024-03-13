import 'package:real_estate_app/model/department_model.dart';
import 'package:real_estate_app/model/ticket_model.dart';

import '../../model/paginator.dart';

import '../../util/result.dart';

abstract class TicketRepo {
  Future<Result<List<Ticket>>> getTickets(
      {String? createdBy, Paginator? paginator});
  Future<Result<Ticket>> getTicket(String ticketId);
  Future<Result<void>> addTicket({required Map<String, dynamic> values});
  Future<Result<List<Department>>> getDepartments({Paginator? paginator});
}
