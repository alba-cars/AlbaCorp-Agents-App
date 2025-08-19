import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../model/quick_access_model.dart';
import '../../util/api_error.dart';
import '../../util/result.dart';
import '../repository/quick_access_repo.dart';

@Injectable(as: QuickAccessRepo)
class QuickAccessData implements QuickAccessRepo {
  QuickAccessData(this._dio);
  final Dio _dio;
  final log = Logger();

  @override
  Future<Result<List<QuickAccessCard>>> getCards(String sectionId) async {
    try {
      final response = await _dio.get('/v1/cards/section/$sectionId');
      final data = response.data as List;
      final cards = data.map((e) => QuickAccessCard.fromJson(e)).toList();
      return Success(cards);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<QuickAccessSection>>> getSections() async {
    try {
      final response = await _dio.get('/v1/sections/all');
      final data = response.data as List;
      final sections = data.map((e) => QuickAccessSection.fromJson(e)).toList();
      return Success(sections);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
