class AppConstants {
  static const String packagePath = 'packages/app_utilities/';
  static const String googleMapPath = 'assets/map/map_style.json';
  static const String translationPath = 'assets/translations';

  /// This is user type constant variable
  static const String customer = 'Customer';
  static const String driver = 'Driver';
  static const String deliveryAgent = 'Delivery Agent';

  /// This function will return userType (int value) and take userType("Customer")
  ///  as a parameter to send userType in the api's

  static int getUserType(String usertype) {
    int userType = 0;
    switch (usertype) {
      case "Customer":
        userType = 1;
        break;
      case "Driver":
        userType = 2;
        break;
      case "Delivery Agent":
        userType = 3;
        break;
      case "Conductor":
        userType = 4;
        break;
      case "Student":
        userType = 5;
        break;
      case "Teacher":
        userType = 6;
        break;
      case "Operator Agent":
        userType = 7;
        break;
      case "Employee":
        userType = 8;
        break;
      case "Corporate Admin":
        userType = 9;
        break;
    }
    return userType;
  }
}
