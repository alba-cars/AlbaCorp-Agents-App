import 'package:real_estate_app/model/property_type_model.dart';

import '../model/property_model.dart';

num? getPrice(Property property) {
  if (property.askingPrice != null) {
    return property.askingPrice!;
  } else if (property.oneCheqPrice != null) {
    return property.oneCheqPrice!;
  } else if (property.twoCheqPrice != null) {
    return property.twoCheqPrice!;
  } else if (property.fourCheqPrice != null) {
    return property.fourCheqPrice!;
  } else if (property.sixCheqPrice != null) {
    return property.sixCheqPrice!;
  } else if (property.twelveCheqPrice != null) {
    return property.twelveCheqPrice!;
  } else {
    return null;
  }
}

getPropTypeRegex(propType) {
  final othersRegex = '(?!${[
    'Apartment',
    'Flat',
    'Villa',
    'Townhouse',
    'Hotel Apartment',
    'Building',
    'Hotel Apartments',
    'HotelApartment',
    'HotelApartments',
    'Land',
    'Plot',
    'Shop',
    'Store',
    'Office',
    'Warehouse'
  ].join('|')}).*';
  switch (propType) {
    case "Apartment":
      return '(Apartment|Flat|Residential Flats|Residential Flat)';
    case "Plot":
      return '(Land|Plot)';
    case "Commercial":
      return '(Shop|Store|Office|Warehouse)';
    case "Townhouse":
      return '(Townhouse|Town House)';
    case "Hotel Apartment":
      return '(Hotel Apartment|HotelApartment|Hotel Apartments|HotelApartments)';
    case "Villa":
      return '(Villa|Villas|Building|Vila)';
    case 'Other':
      return othersRegex;
    default:
      return propType;
  }
}

sortPropertyTypes(List<PropertyType> propertyTypes) {
  List<String> sortOrder = [
    "apartment",
    "villa",
    "office",
    "retail",
    "penthouse",
    "land",
    "townhouse",
    "warehouse"
  ];
  final properties = propertyTypes;
  // Custom sorting function
  properties.sort((a, b) {
    int indexA = sortOrder.indexOf(a.propertyType.toLowerCase());
    int indexB = sortOrder.indexOf(b.propertyType.toLowerCase());

    // If both are found in the custom sort order, compare by their index
    if (indexA != -1 && indexB != -1) {
      return indexA.compareTo(indexB);
    }

    // If only 'a' is found in custom order, it should come first
    if (indexA != -1) return -1;

    // If only 'b' is found in custom order, it should come first
    if (indexB != -1) return 1;

    // If neither is in the custom order, keep the original order
    return 0;
  });
  return properties;
}
