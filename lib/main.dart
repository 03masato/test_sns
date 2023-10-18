import 'package:flutter/material.dart';
import 'package:sample/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'こんぶ @ Flutter大学',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          //スクロールさせる
          child: Column(
            children: [
              TweetTile(), //一つ一つの塊
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}