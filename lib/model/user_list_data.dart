import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_data.freezed.dart';
part 'user_list_data.g.dart';

@freezed
class UserListData with _$UserListData {
  const factory UserListData(
      {@JsonKey(name: "_id") required String id,
      @JsonKey(name: "user_name") String? name,
      @JsonKey(name: "user_phone") String? phone}) = _UserListData;

  factory UserListData.fromJson(Map<String, dynamic> json) =>
      _$UserListDataFromJson(json);
}
