import 'package:flutter/material.dart';


class Comic {
  final String title;
  final String author;
  final String description;
  final String view;

  Comic({
    required this.title,
    required this.author,
    required this.description,
    required this.view,
  });
}
class chitiet extends StatelessWidget {
  final Comic comic;

  chitiet({required this.comic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(comic.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/op.jpg',
            ),
            SizedBox(height: 16),
            Text(
              'Tác giả: ${comic.author}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),
            Text(
              'Mô tả: ${comic.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),
            Text(
              'Lượt xem: ${comic.view}',
              style: TextStyle(fontSize: 18),
            ),
            // Thêm các phần khác của giao diện chi tiết tại đây
          ],
        ),
      ),
    );
  }
}