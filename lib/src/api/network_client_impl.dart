//
// import 'network_client.dart';
//
// class NetworkClientImpl extends NetworkClient {
//   @override
//   String getHttpErrorMessage({int? statusCode}) {
//     String errorMessage = 'Something went wrong';
//     switch (statusCode) {
//       case 201:
//         {
//           errorMessage = "Login failed. Invalid credentials";
//           break;
//         }
//       case 400:
//         {
//           errorMessage = "Bad Request";
//           break;
//         }
//       case 401:
//         {
//           errorMessage = 'Unauthorized';
//           break;
//         }
//       case 404:
//         {
//           errorMessage = "Bad Request";
//           break;
//         }
//       case 422:
//         {
//           errorMessage = "UnProcessable Entity";
//           break;
//         }
//       case 500:
//         {
//           errorMessage = "Server Error";
//           break;
//         }
//     }
//     return errorMessage;
//   }
// }
