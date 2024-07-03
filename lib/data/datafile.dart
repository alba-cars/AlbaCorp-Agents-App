import 'package:real_estate_app/model/booking_data_model.dart';
import 'package:real_estate_app/model/bottom_model.dart';
import 'package:real_estate_app/model/detail_screen_slider.dart';
import 'package:real_estate_app/model/filter_buy_page_type_model.dart';
import 'package:real_estate_app/model/intro_model.dart';
import 'package:real_estate_app/model/messege_model.dart';
import 'package:real_estate_app/model/recomended_model.dart';
import 'package:real_estate_app/model/search_histry_data.dart';

import '../model/saved_home_model.dart';

class DataFile {
  static List<ModelIntro> introList = [
    ModelIntro("intro1.png", "Explore and buy a Row House!"),
    ModelIntro("intro2.png", "Find Your Dream Space"),
    ModelIntro("intro3.png", "Find Suitable Home For You"),
    ModelIntro("intro4.png", "Welcome To Real Estate")
  ];
  static List<ModelBottom> bottomList = [
    ModelBottom("home.svg", "home_bold.svg", "Home"),
    ModelBottom("explore.svg", "explorer_bold.svg", "Explore"),
    ModelBottom("bookmark.svg", "bookmark_bold.svg", "Saved"),
    ModelBottom("messages.svg", "message_bold.svg", "Message"),
    ModelBottom("setting.svg", "setting_bold.svg", "More")
  ];

  static List<ModelRecomended> recomendedList = [
    ModelRecomended("recomended1.png", "New luxury apartment for sell",
        "Pennsylvania", "Apartment", "\$1500", "106 m", false),
    ModelRecomended("recomended2.png", "New duplex House for sell",
        "Pennsylvania", "House", "\$800", "106 m", false),
    ModelRecomended("recomended3.png", "New apartment for rent ",
        "Royal Ln.Mesa ", "Apartment", "\$900", "105 m", false)
  ];

  static List<DetailSlider> getDetailSliderData() {
    return [
      DetailSlider(image: "detail_image.png"),
      DetailSlider(image: "detail_image.png"),
      DetailSlider(image: "detail_image.png"),
      DetailSlider(image: "detail_image.png"),
    ];
  }

  static List<Search> getSearchData() {
    return [
      Search(
          image: 'search1st.png',
          address: '715 Ash Dr. San Jose, South Dakota',
          name: 'Westheimer Appartment'),
      Search(
          image: 'search2nd.png',
          address: '502 Preston Rd. Inglewood, Maine',
          name: 'Syracuse Appartment'),
      Search(
          image: 'search3rd.png',
          address: '631 Elgin St. Celina, Delaware',
          name: 'Celina Appartment'),
      Search(
          image: 'search4th.png',
          address: '517 W. Gray St. Utica, Pennsylvania',
          name: 'Syracuse Appartment'),
      Search(
          image: 'search1st.png',
          address: '715 Ash Dr. San Jose, South Dakota',
          name: 'Westheimer Appartment'),
    ];
  }

  static List<ModelType> getTypeData() {
    return [
      ModelType(name: "House"),
      ModelType(name: "Apartment"),
      ModelType(name: "Flat"),
    ];
  }

  static List<SaveHome> getSaveHome() {
    return [
      SaveHome(
          name: 'Preston Inglewood Appartment',
          image: 'saved_home_1st.png',
          price: '\$1500',
          favourite: false),
      SaveHome(
          name: 'Wonderland Palace In Hawai',
          image: 'saved_home_2nd.png',
          price: '\$1100',
          favourite: false),
      SaveHome(
          name: 'Prefabricated House On Rent',
          image: 'saved_home_3rd.png',
          price: '\$800',
          favourite: false),
      SaveHome(
          name: 'Preston Inglewood House',
          image: 'saved_home_4th.png',
          price: '\$1500',
          favourite: false),
      SaveHome(
          name: 'Celina Appartment',
          image: 'saved_home_5th.png',
          price: '\$1500',
          favourite: false),
      SaveHome(
          name: 'Preston Inglewood Appartment',
          image: 'saved_home_6th.png',
          price: '\$1500',
          favourite: false)
    ];
  }

  static List<Messege> getMessege() {
    return [
      Messege(
          image: 'user1st.png',
          name: 'Kristin Watson',
          messege: 'Amet minim mollit',
          time: '10:02 PM'),
      Messege(
          image: 'user2nd.png',
          name: 'Cameron Williamson',
          messege: 'Dolore magna aliqua',
          time: '09:30 PM'),
      Messege(
          image: 'user3rd.png',
          name: 'Dianne Russell',
          messege: 'Est placerat in egestas erat',
          time: '04:11 AM'),
      Messege(
          image: 'user4th.png',
          name: 'Esther Howard',
          messege: 'Dictum sit amet justo donec',
          time: '02:30 AM'),
      Messege(
          image: 'user5th.png',
          name: 'Wade Warren',
          messege: 'Pulvinar etiam non quam lacus',
          time: 'Aug 12'),
      Messege(
          image: 'user6th.png',
          name: 'Darlene Robertson',
          messege: 'Ipsum faucibus vitae aliquet nec',
          time: 'Aug 8'),
    ];
  }

  static List<BookingHome> getBookHome() {
    return [
      BookingHome(
          image: 'booking1st.png',
          name: 'Preston Inglewood Appartment',
          price: '\$150'),
      BookingHome(
          image: 'booking2nd.png',
          name: 'New duplex House for sell',
          price: '\$1500'),
      BookingHome(
          image: 'booking3rd.png', name: 'Heaven Appartment', price: '\$800'),
    ];
  }
}
