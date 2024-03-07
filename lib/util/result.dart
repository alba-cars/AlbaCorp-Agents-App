import '../model/paginator.dart';

sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T value;
  final Paginator? paginator;
  final dynamic payload;

  Success(
    this.value, {
    this.paginator,
    this.payload,
  });
}

class Error<T> extends Result<T> {
  final String exception;
  final int? code;

  Error(this.exception, {this.code});
}
