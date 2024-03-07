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
