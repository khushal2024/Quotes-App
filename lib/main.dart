// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:quote/model.dart';

// void main() => runApp(Home());

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: QuotesApp(),
//     );
//   }
// }

// class QuotesApp extends StatefulWidget {
//   const QuotesApp({super.key});

//   @override
//   State<QuotesApp> createState() => _QuotesAppState();
// }

// class _QuotesAppState extends State<QuotesApp> {
//   List<bool> favoriteStatus = List.generate(myQuotes.length, (index) => false);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//       ),
//       body: CarouselSlider.builder(
//         itemCount: myQuotes.length,
//         options: CarouselOptions(
//           aspectRatio: 80 / 114,
//           viewportFraction: 0.99,
//           initialPage: 0,
//           enableInfiniteScroll: true,
//           autoPlay: true,
//         ),
//         itemBuilder: (context, index, realIndex) {
//           return Center(
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(myQuotes[index].img),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     myQuotes[index].quote,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 300,
//                   ),
//                   Text(
//                     '\n Author: ' + myQuotes[index].author,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       IconButton(
//                         color:
//                             favoriteStatus[index] ? Colors.red : Colors.white,
//                         onPressed: () {
//                           setState(() {
//                             favoriteStatus[index] = !favoriteStatus[index];
//                           });
//                         },
//                         icon: Icon(Icons.favorite),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.share),
//                         color: Color.fromARGB(255, 253, 251, 251),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quote/model.dart';
import 'package:share_plus/share_plus.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotesApp(),
    );
  }
}

class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key});

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  List<bool> favoriteStatus = List.generate(myQuotes.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: CarouselSlider.builder(
        itemCount: myQuotes.length,
        options: CarouselOptions(
          aspectRatio: 80 / 114,
          viewportFraction: 0.99,
          initialPage: 0,
          enableInfiniteScroll: true,
          autoPlay: false,
        ),
        itemBuilder: (context, index, realIndex) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(myQuotes[index].img),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    myQuotes[index].quote,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Text(
                    '\n Author: ' + myQuotes[index].author,
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        color:
                            favoriteStatus[index] ? Colors.red : Colors.white,
                        onPressed: () {
                          setState(() {
                            favoriteStatus[index] = !favoriteStatus[index];
                          });
                        },
                        icon: Icon(Icons.favorite),
                      ),
                      IconButton(
                        onPressed: () {
                          Share.share(myQuotes[index].img);
                        },
                        icon: Icon(Icons.share),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// void shared() {
//   String message = "this is shared file";

//   /// optional subject that will be used when sharing to email
//   Share.share(message, subject: 'Become An Elite Flutter Developer');
// }

// import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   static const customSwatch = MaterialColor(
//     0xFFFF5252,
//     <int, Color>{
//       50: Color(0xFFFFEBEE),
//       100: Color(0xFFFFCDD2),
//       200: Color(0xFFEF9A9A),
//       300: Color(0xFFE57373),
//       400: Color(0xFFEF5350),
//       500: Color(0xFFFF5252),
//       600: Color(0xFFE53935),
//       700: Color(0xFFD32F2F),
//       800: Color(0xFFC62828),
//       900: Color(0xFFB71C1C),
//     },
//   );

//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: customSwatch,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Share Plus"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'Share eclectify University with your friends:',
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             IconButton(
//                 onPressed: sharePressed,
//                 icon: Icon(
//                   Icons.share,
//                   color: Colors.redAccent,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }

//   // void sharePressed() {
//   //   String message =
//   //       'Flutter Developer in no time: https://eclectify-universtiy.web.app';
//   //   //Share.share(message);

//   //   /// optional subject that will be used when sharing to email
//   //   Share.share(message, subject: 'Become An Elite Flutter Developer');

//   //   /// share a file
//   //    Share.shareFiles(['${directory.path}/image.jpg'], text: 'Great picture');
//   //   /// share multiple files
//   //   // Share.shareFiles(['${directory.path}/image1.jpg', '${directory.path}/image2.jpg']);
//   // }
// }
