import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginator.freezed.dart';
part 'paginator.g.dart';

@freezed
class Paginator with _$Paginator {
  const factory Paginator({
    required int itemCount,
    required int perPage,
    required int currentPage,
  }) = _Paginator;

  factory Paginator.fromJson(Map<String, dynamic> json) =>
      _$PaginatorFromJson(json);
}
