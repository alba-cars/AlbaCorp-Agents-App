import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/agency_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/offplan_listing_response.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/user.dart';

import 'agent_model.dart';

part 'deal_model.freezed.dart';
part 'deal_model.g.dart';

@freezed
class Deal with _$Deal {
  const factory Deal({
    required String id,
    @JsonKey(name: 'reference_number') required String referenceNumber,
    @JsonKey(name: 'creation_date') required DateTime creationDate,
    required String category,
    required List<String> roleType,
    double? agreedSalePrice,
    double? agreedCommission,
    Agent? assignedAgent,
    String? type,
    required String status,
    required List<dynamic> rejection,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'new_listing_request_id') String? newListingRequestId,
    required bool active,
    @JsonKey(name: 'created_by') required User createdBy,
    @JsonKey(name: 'user') Lead? client,
    String? purpose,
    String? buyerClientType,
    String? sellerclientType,
    String? buyerInternalUserId,
    String? buyerAssignedAgentId,
    double? buyerAgreedCommission,
    String? sellerInternalUserId,
    String? sellerAssignedAgentId,
    double? sellerAgreedCommission,
    //external seller
    String? sellerExternalUserId,
    String? sellerExternalAgentName,
    String? sellerExternalAgentPhone,
    String? sellerExternalClientName,
    String? sellerExternalClientPhone,
    Agency? sellerExternalUser,
    DealListingResponse? external_listing_property,
    //
    //external buyer
    String? buyerExternalAgentName,
    String? buyerExternalAgentPhone,
    String? buyerExternalClientName,
    String? buyerExternalClientPhone,
    //
    @JsonKey(name: 'property_list_id') String? propertyListId,
    Lead? buyerInternalUser,
    Agent? buyerAssignedAgent,
    Lead? sellerInternalUser,
    Agent? sellerAssignedAgent,
    @JsonKey(name: 'property_list') Property? propertyList,
    // NewListingRequest? newListingRequest,
  }) = _Deal;

  factory Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);
}
