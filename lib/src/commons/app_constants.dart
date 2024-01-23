class AppConstants {
  static const String packagePath = 'packages/allride_utilities/';
  static const String googleMapPath = 'assets/map/map_style.json';
  static const String translationPath = 'assets/translations';
  static const int animationDuration = 300;
  static const double animationVerticalOffset = 50.0;

  /// This is user type constant variable
  static const String customer = 'Customer';
  static const String driver = 'Driver';
  static const String deliveryAgent = 'Delivery Agent';

  /// This function will return userType (int value) and take userType("Customer")
  /// as a parameter to send userType in the api's

  static int getUserType(String usertype) {
    int userType = 0;
    switch (usertype) {
      case "Super Admin":
        userType = 0;
        break;
      case "Customer":
        userType = 2;
        break;
      case "Driver":
        userType = 3;
        break;
      case "Delivery Agent":
        userType = 4;
        break;
      case "Conductor":
        userType = 5;
        break;
      case "Student":
        userType = 6;
        break;
      case "Teacher":
        userType = 7;
        break;
      case "Operator Agent":
        userType = 8;
        break;
      case "Employee":
        userType = 9;
        break;
      case "Corporate Admin":
        userType = 10;
        break;
    }
    return userType;
  }

  static String getTripStatus(int tripStatus) {
    String status = '';
    switch (tripStatus) {
      case 0:
        status = 'Created';
        break;
      case 1:
        status = 'Scheduled'; //published
        break;
      case 2:
        status = 'Accepted'; //accepted
        break;
      case 3:
        status = 'Pickup';
        break;
      case 4:
        status = 'Ongoing';
        break;
      case 5:
        status = 'Cancelled';
        break;
      case 6:
        status = 'Completed';
        break;
    }
    return status;
  }
}
