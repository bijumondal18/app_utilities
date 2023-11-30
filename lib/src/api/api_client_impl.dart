// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:dio/dio.dart';
//
// import 'Resource.dart';
// import 'Status.dart';
// import 'api_client.dart';
// import 'locator.dart';
// import 'network_client.dart';
//
// class ApiClientImpl extends ApiClient {
//   //final NetworkClient _networkClient = getIt<NetworkClient>();
//
//   @override
//   String handleDioError(DioException e) {
//     var msg = "";
//     switch (e.type) {
//       case DioExceptionType.connectionTimeout:
//         break;
//       case DioExceptionType.receiveTimeout:
//         break;
//       case DioExceptionType.unknown:
//         if (e.message!.contains('SocketException')) {
//           msg = 'Internet not available';
//         } else {
//           msg = 'Something went wrong';
//         }
//         break;
//       default:
//         msg = 'Something went wrong';
//         break;
//     }
//     return msg;
//   }
//
//   @override
//   Future<Resource> getRequest(
//       {required String url,
//       Map<String, dynamic>? requestData,
//       Map<String, String>? header}) async {
//     try {
//       //200
//       var response = await Dio().get(url,
//           queryParameters: requestData, options: Options(headers: header));
//       log('Response ---------- ${response.data}');
//       return Resource(
//           status: response.data['status'] ? STATUS.SUCCESS : STATUS.ERROR,
//           data: response.data['data'],
//           message: response.data['message']);
//     } on DioException catch (e) {
//       if (e.response != null && e.response!.data != null) {
//         Map<String, dynamic> responses = e.response?.data ?? {};
//         return Resource(
//             status: STATUS.ERROR,
//             message: responses['message'] ?? '',
//             );
//       } else {
//         return Resource(
//             status: STATUS.ERROR,
//             message: 'Something went wrong',
//             );
//       }
//     }
//   }
//
//   @override
//   Future<Resource> postRequest(
//       {required String url,
//       required Map<String, dynamic> requestData,
//       Map<String, String>? header}) async {
//     try {
//       String str = json.encode(requestData);
//       var response = await Dio().post(url,
//           data: jsonEncode(requestData), options: Options(headers: header));
//       log('Request ---------- $str');
//       log('Response ---------- ${response.data['data']}');
//       return Resource(
//           status: response.data['success'] ? STATUS.SUCCESS : STATUS.ERROR,
//           data: response.data['data'],
//           message: response.data['message']);
//     } on DioException catch (e) {
//       if (e.response != null) {
//         Map<String, dynamic> responses = e.response?.data ?? {};
//         return Resource(
//             status: STATUS.ERROR,
//             message: responses['message'] ?? '',
//            );
//       } else {
//         return Resource(
//             status: STATUS.ERROR,
//             message: 'Something went wrong',
//            );
//       }
//     }
//   }
// }
