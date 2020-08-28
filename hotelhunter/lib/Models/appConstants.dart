
import 'package:hotelhunter/Models/user_object.dart';

class AppConstants {

  static final String appName = 'Airbnb';
  static final String googleMapsAPIKey = 'AIzaSyCm4A6nJZKois6nu3dRukiVlWezVoKY7PI';

  static User currenUser;
  static bool isHosting = false;

  static final Map<int, String> monthDict = {
    1: "1월",
    2: "2월",
    3: "3월",
    4: "4월",
    5: "5월",
    6: "6월",
    7: "7월",
    8: "8월",
    9: "9월",
    10: "10월",
    11: "11월",
    12: "12월",
  };

  static final Map<int, int> daysInMonths = {
    1: 31,
    2: DateTime.now().year%4 == 0 ? 29 : 28,
    3: 31,
    4: 30,
    5: 31,
    6: 30,
    7: 31,
    8: 31,
    9: 30,
    10: 31,
    11: 30,
    12: 31,
  };


}
