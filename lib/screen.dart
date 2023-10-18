import 'package:flutter/material.dart';

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
          const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.gzn.jp/img/2018/01/15/google-gorilla-ban/00.jpg')),
          const SizedBox(width: 8), //少し間隔空ける
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 左揃えにする
            children: [
              const Row(
                children: [
                  Text('こんぶ @ Flutter大学'),
                  SizedBox(width: 8), //空間を開ける
                  Text('2022/05/05'),
                ],
              ),
              const SizedBox(height: 4),
              const Text('最高でした。'),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            ],
          ),
        ],
      ),
    );
  }
}
