import 'package:flutter/material.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 150, // 원하는 크기 설정
          backgroundImage:
              AssetImage('assets/uihub/uihub_basic_full_page_dialog/winter.webp'),
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: Scaffold(
      body: NewView(),
    ),
  ));
}
