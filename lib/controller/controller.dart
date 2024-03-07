// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:real_estate_app/data/datafile.dart';
// import 'package:real_estate_app/model/recomended_model.dart';
// import 'package:real_estate_app/model/saved_home_model.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

// class IntroController extends GetxController {
//   RxInt position = 0.obs;

//   onChange(RxInt value) {
//     position.value = value.value;
//     update();
//   }
// }

// class HomeController extends GetxController {
//   RxInt index = 0.obs;
//   RxInt category = 0.obs;

//   categoryChange(int value) {
//     category.value = value;
//     update();
//   }

//   onChange(RxInt value) {
//     index.value = value.value;
//     update();
//   }

//   void onSavePosition(ModelRecomended datail) {
//     if (datail.favourite == false) {
//       datail.favourite = true;
//       update();
//     } else {
//       datail.favourite = false;
//       update();
//     }
//   }
// }

// class SearchScreenController extends GetxController {}

// class FilterScreenController extends GetxController
//     with GetTickerProviderStateMixin {
//   SfRangeValues currentRangeValues = SfRangeValues(0, 100);
//   late TabController tabController;
//   late PageController pController;
//   RxInt category = 0.obs;

//   void onInit() {
//     // TODO: implement onInit
//     tabController = TabController(length: 2, vsync: this);
//     pController = PageController();
//     super.onInit();
//   }

//   categoryChange(int value) {
//     category.value = value;
//     update();
//   }

//   onRangeValue(SfRangeValues values) {
//     currentRangeValues = values;
//     update();
//   }
// }

// class RecomendedScreenController extends GetxController {}

// class DetailScreenController extends GetxController {
//   int currentPage = 0;
//   bool savePosition = false;

//   onPageChange(int initialPage) {
//     currentPage = initialPage;
//     update();
//   }

//   onSvaePosition() {
//     savePosition = !savePosition;
//     update();
//   }
// }

// class SaveScreenController extends GetxController {
//   List<SaveHome> savedHome = DataFile.getSaveHome();
//   bool gridView = true;
//   bool listView = false;

//   void onGridViewSet(bool grid) {
//     gridView = grid;
//     listView = false;
//     update();
//   }

//   onListViewSet(bool list) {
//     listView = true;
//     gridView = false;
//     update();
//   }

//   onSavePosition(SaveHome save) {
//     if (save.favourite == true) {
//       save.favourite = false;
//       update();
//     } else {
//       save.favourite = true;
//       update();
//     }
//   }
// }

// class TabMoreScreenController extends GetxController {}

// class EditscreenController extends GetxController {}

// class MyBookingScreenController extends GetxController
//     with GetTickerProviderStateMixin {
//   late TabController tabController;
//   late PageController pController;

//   void onInit() {
//     // TODO: implement onInit
//     tabController = TabController(length: 2, vsync: this);
//     pController = PageController();
//     super.onInit();
//   }
// }

// class NotificationScreenController extends GetxController {
//   RxInt category = 0.obs;

//   categoryChange(int value) {
//     category.value = value;
//     update();
//   }
// }

// class LanguageScreenController extends GetxController {
//   var option = 0;

//   onChageOptionValue(var value) {
//     option = value;
//     update();
//   }
// }
