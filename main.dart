// import 'package:flutter/material.dart';
// import 'package:last/CommentsPage%20.dart';
// import 'package:last/LessonSeven.dart';
// import 'package:last/WhatsApp.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Text Fields Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:WhatsApp() ,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:last/CommentList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comment List Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Comment List Example'),
        ),
        body: CommentList(),
      ),
    );
  }
}