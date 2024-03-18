import 'package:real_estate_app/model/paginator.dart';

extension PaginatorExtension on Paginator {
  bool get hasNextPage => perPage * currentPage <= itemCount;
}
