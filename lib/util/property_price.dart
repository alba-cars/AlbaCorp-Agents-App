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
