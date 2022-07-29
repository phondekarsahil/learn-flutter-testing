import 'package:flutter/material.dart';

class ScrollTestingWidget extends StatelessWidget {
  final List<String> bookTitles;

  const ScrollTestingWidget({Key? key, required this.bookTitles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(bookTitles.isNotEmpty);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookshelf"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(bookTitles[index]),
        ),
        itemCount: bookTitles.length,
      ),
    );
  }
}
