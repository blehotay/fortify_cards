import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final items = ['Kimura', 'Rear Naked Choke', 'Arm Bar', 'Americana'];
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               'Fortify Cards',
//             ),
//           ),
//           body: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, // number of items in each row
//               mainAxisSpacing: 16, // spacing between rows
//               crossAxisSpacing: 16,
//               mainAxisExtent: 200,
//             ),
//             padding: const EdgeInsets.all(8), // padding around the grid
//             itemCount: items.length, // total number of items
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => CardPage(textName: items[index]),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   color: Colors.blue, // color of grid items
//                   child: Center(
//                     child: Text(
//                       items[index],
//                       style:
//                           const TextStyle(fontSize: 18.0, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           )),
//     );
//   }
// }

class CardPage extends StatelessWidget {
  const CardPage({
    super.key,
    required this.textName,
  });

  final String textName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(textName),
      ),
    );
  }
}
