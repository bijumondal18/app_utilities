import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHelper {
  /// This function is for convert string to date
  static String getDateFromString(String givenDate) {
    var inputDate = DateTime.parse(givenDate);
    var outputFormat = DateFormat('dd MMM, yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  /// This function is for convert string to time
  static String getTimeFromString(String givenTime) {
    var inputDate = DateTime.parse(givenTime);
    var outputFormat = DateFormat('h:mm a');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  /// This function is for convert timestamp to date string
  static String getStringDateFromTimestamp(int timestamp) {
    DateTime inputDate =
        DateTime.fromMillisecondsSinceEpoch(timestamp, isUtc: false);
    var outputFormat = DateFormat('dd MMM, yyyy').format(inputDate);
    return outputFormat;
  }

  /// This function is for convert timestamp to time string
  static String getStringTimeFromTimestamp(int timestamp) {
    DateTime inputDate =
        DateTime.fromMillisecondsSinceEpoch(timestamp, isUtc: false);
    var outputFormat = DateFormat('hh:mm a').format(inputDate);
    return outputFormat;
  }

  /// This function is to get app version
  static String getAppVersion() {
    String appVersion = '';
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      appVersion = packageInfo.version;
    });
    return appVersion;
  }

  /// This function is to get app name
  static String getAppName() {
    String appName = '';
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      appName = packageInfo.appName;
    });
    return appName;
  }

  /// This function is to get app build number
  static String getAppBuildNumber() {
    String buildNumber = '';
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      buildNumber = packageInfo.buildNumber;
    });
    return buildNumber;
  }

  /// This function is to get device name in which the app is installed
  static Future<String> getDeviceName() async {
    String deviceName = '';
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    if (Platform.isAndroid) {
      deviceName = androidDeviceInfo.model;
    } else if (Platform.isIOS) {
      deviceName = iosDeviceInfo.utsname.machine;
    }

    return deviceName.toString();
  }

  /// This function is responsible for Call a particular phone number
  static Future<void> makePhoneCall(String phoneNumber) async {
    Uri url = Uri(scheme: "tel", path: phoneNumber);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Unable to make call to this number";
    }
  }

  ///
}
