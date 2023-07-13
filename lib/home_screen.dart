/// メモ一覧画面用のWidget
import 'package:flutter/material.dart';
import 'package:flutter_task_3/todo_add_page.dart';

import 'models/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Model> dummyDataList = [
    Model(id: '1', title: 'title1'),
    Model(id: '2', title: 'title2'),
    Model(id: '3', title: 'title3'),
  ];

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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: dummyDataList.length,
                itemBuilder: (context, index) {
                  //以下の記載でModelクラスの単体のデータ取得が可能
                  final Model modelData = dummyDataList[index];
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        //以下の記載でModelクラスのタイトル
                        child: Text(modelData.title),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {
            // "push"で新規画面に遷移
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                // 遷移先の画面としてリスト追加画面を指定
                return const TodoAddPage();
              }),
            );
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
