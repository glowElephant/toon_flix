import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String name = 'hanah';
}

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // List<int> numbers = [];

  // // int counter = 0;

  // void onClickIconButton() {
  //   setState(() {
  //     // counter = counter + 1;
  //     numbers.add(numbers.length);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
              // for (var n in numbers) Text('$n'),
              // // Text(
              // //   '$numbers',
              // //   style: const TextStyle(fontSize: 30),
              // // ),
              // IconButton(
              //     iconSize: 40,
              //     onPressed: onClickIconButton,
              //     icon: const Icon(Icons.add_box_rounded))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     CurrencyCard card1, card2, card3;
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           "Hey, Selena",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 38,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           'Welcome back',
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.8),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Total Balance',
//                   style: TextStyle(
//                       fontSize: 22, color: Colors.white.withOpacity(0.8)),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   '\$5 194 482',
//                   style: TextStyle(
//                     fontSize: 42,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                       text: "Trasnfer",
//                       bgColor: Color(0xFFF1B33B),
//                       textColor: Colors.black,
//                       textSize: 20,
//                     ),
//                     Button(
//                       text: "Request",
//                       bgColor: Color(0xFF1F2123),
//                       textColor: Colors.white,
//                       textSize: 20,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       'Wallets',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       'View All',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 card1 = CurrencyCard(
//                   name: 'Euro',
//                   code: 'EUR',
//                   amount: '6 428',
//                   icon: Icons.euro_rounded,
//                 ),
//                 card2 = CurrencyCard(
//                   name: 'Bitcoin',
//                   code: 'BTC',
//                   amount: '9 785',
//                   icon: Icons.currency_bitcoin,
//                   beforeCard: card1,
//                 ),
//                 card3 = CurrencyCard(
//                   name: 'Dollar',
//                   code: 'USD',
//                   amount: '428',
//                   icon: Icons.attach_money_outlined,
//                   beforeCard: card2,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
