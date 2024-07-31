import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/webtoon_widght.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  // List<WebtoonModel> webtoonInfo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return const Text('loading....');
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
            title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id);
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}

// import 'dart:async';

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   static const initSeconds = 1500;
//   int totalSeconds = initSeconds;
//   bool isRunning = false;
//   late Timer timer;
//   int totalPomodors = 0;

//   void onTick(Timer timer) {
//     if (totalSeconds == 0) {
//       setState(() {
//         totalPomodors = totalPomodors + 1;
//         isRunning = false;
//         totalSeconds = initSeconds;
//       });
//       timer.cancel();
//     } else {
//       setState(() {
//         totalSeconds = totalSeconds - 1;
//       });
//     }
//   }

//   void onPlayPressed() {
//     timer = Timer.periodic(
//       const Duration(seconds: 1),
//       onTick,
//     );
//     setState(() {
//       isRunning = true;
//     });
//   }

//   void onPausePressed() {
//     timer.cancel();
//     setState(() {
//       isRunning = false;
//     });
//   }

//   void onStopPressed() {
//     setState(() {
//       isRunning = false;
//       totalSeconds = initSeconds;
//     });
//     timer.cancel();
//   }

//   String format(int seconds) {
//     var duration = Duration(seconds: seconds);
//     return duration.toString().split(".").first.substring(2, 7);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       body: Column(
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               alignment: Alignment.bottomCenter,
//               child: Text(
//                 format(totalSeconds),
//                 style: TextStyle(
//                     color: Theme.of(context).cardColor,
//                     fontSize: 89,
//                     fontWeight: FontWeight.w600),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 2,
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     iconSize: 120,
//                     color: Theme.of(context).cardColor,
//                     onPressed: isRunning ? onPausePressed : onPlayPressed,
//                     icon: Icon(isRunning
//                         ? Icons.pause_circle_outline
//                         : Icons.play_circle_outline),
//                   ),
//                   IconButton(
//                     iconSize: 120,
//                     color: Theme.of(context).cardColor,
//                     onPressed: onStopPressed,
//                     icon: const Icon(Icons.stop_circle_outlined),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Theme.of(context).cardColor,
//                         borderRadius: BorderRadius.circular(50)),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Pomodors',
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                               color: Theme.of(context)
//                                   .textTheme
//                                   .displayLarge!
//                                   .color),
//                         ),
//                         Text(
//                           '$totalPomodors',
//                           style: TextStyle(
//                               fontSize: 58,
//                               fontWeight: FontWeight.w600,
//                               color: Theme.of(context)
//                                   .textTheme
//                                   .displayLarge!
//                                   .color),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
