// // ignore_for_file: prefer_single_quotes

// import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:gunaso/src/app/presentation/splash_screen/data/models/splash_models.dart';
// import 'package:gunaso/src/app/presentation/splash_screen/data/splash_api/api.dart';

// import '../../routes/app_router.dart';
// import '../app_texts.dart';
// import '../containers.dart';

// class AppBars extends StatefulWidget {
//   const AppBars({Key? key}) : super(key: key);

//   @override
//   State<AppBars> createState() => _AppBarsState();
// }

// class _AppBarsState extends State<AppBars> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Containers(
//       color: Colors.grey.shade100,
//       width: size.width,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               SizedBox(
//                 height: 40,
//                 child: Image.asset(
//                   "images/logo.png",
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               const SizedBox(
//                 width: 11.0,
//               ),
//               Containers(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Texts(
//                       texts: "नगरपालिका एप",
//                       fontSize: 14,
//                       color: Colors.grey.shade700,
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Containers(
//                   onTap: () {
//                     // context.router.push(const NotificationRoute());
//                   },
//                   color: Colors.transparent,
//                   height: 55.0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: const [
//                       SizedBox(
//                         height: 40,
//                         child: ImageIcon(
//                           AssetImage(
//                             'images/notification.png',
//                           ),
//                           size: 40,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 8.0,
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
