// import 'package:flutter/material.dart';
//
// class JobCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color(0xFF1E1C24),
//       elevation: 10,
//       margin: const EdgeInsets.only(bottom: 15),
//       child: Padding(
//         padding: const EdgeInsets.all(25),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Flutter Developer',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//               ),
//             ),
//             Row(
//               children: [
//                 const Text(
//                   'Karachi Pakistan',
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 15,
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (_) => EditJob(),
//                       ),
//                     );
//                   },
//                   icon: const Icon(
//                     Icons.edit,
//                     color: Colors.white,
//                     size: 27,
//                   ),
//                 ),
//                 IconButton(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.delete,
//                     color: Colors.redAccent,
//                     size: 27,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
