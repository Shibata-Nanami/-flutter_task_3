/// メモ一覧画面用のWidget
import 'package:flutter/material.dart';

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({super.key});

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'メモ一覧',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text('メモタイトル'),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
