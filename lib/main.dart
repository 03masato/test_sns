import 'package:flutter/material.dart';

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
        body: SingleChildScrollView(
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

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // 上揃えにする
        children: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.gzn.jp/img/2018/01/15/google-gorilla-ban/00.jpg')),
          SizedBox(width: 8), //少し間隔空ける
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 左揃えにする
            children: [
              Row(
                children: [
                  Text('こんぶ @ Flutter大学'),
                  SizedBox(width: 8), //空間を開ける
                  Text('2022/05/05'),
                ],
              ),
              SizedBox(height: 4),
              Text('最高でした。'),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
          ),
        ],
      ),
    );
  }
}
