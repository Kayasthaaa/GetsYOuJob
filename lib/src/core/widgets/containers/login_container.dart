// // ignore_for_file: prefer_single_quotes

// import 'package:flutter/material.dart';


// class LoginContainer extends StatefulWidget {
//   const LoginContainer({Key? key, required this.label}) : super(key: key);
//   final String label;

//   @override
//   State<LoginContainer> createState() => _LoginContainerState();
// }

// class _LoginContainerState extends State<LoginContainer> {
//   @override
//   void initState() {
//     context.read<GlobalToken>().globalTokenGeneration();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     splash_models? appData = context.watch<GlobalToken>().appData;
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.only(top: 11.0),
//       child: Containers(
//         height: 150,
//         width: size.width,
//         child: Column(
//           children: [
//             Containers(
//               child: Column(
//                 children: [
//                   appData?.response == null
//                       ? const SizedBox.shrink()
//                       : Texts(
//                           texts: appData!.response!.title!,
//                           fontSize: 22,
//                           fontWeight: FontWeight.w600,
//                         ),
//                   Texts(
//                     texts: "नगरपालिका  एप",
//                     fontSize: 17,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.grey.shade800,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Containers(
//               width: size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Texts(
//                     texts: widget.label,
//                     fontSize: 25,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   Texts(
//                     texts: "स्वागतम",
//                     fontSize: 17,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.grey.shade600,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
