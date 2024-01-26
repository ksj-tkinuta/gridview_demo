import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {

  //画面に描画するデータリスト作成
  final List<String> texts = [
    'box1', 'box2', 'box3', 'box4', 'box5', 'box6', 'box7', 'box8', 'box9', 'box10', 'box11', 'box12',
    'box13', 'box14', 'box15', 'box16', 'box17', 'box18', 'box19', 'box20', 'box21', 'box22', 'box23',
    'box24', 'box25', 'box26', 'box27', 'box28', 'box29', 'box30', 'box31', 'box32', 'box33', 'box34',
    'box35', 'box36', 'box37', 'box38', 'box39', 'box40', 'box41', 'box42', 'box43', 'box44', 'box45',
  ];

  GridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Gridview デモ'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(20), //4辺すべて同じ値の余白
          itemCount: texts.length, //要素の数　表示するデータ数の最大値（texts　listの最大値）
          // GridViewを設定する引数を指定
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,     //ボックス左右間のスペース
            mainAxisSpacing: 10,      //ボックス上下間のスペース
            crossAxisCount: 2,        //ボックスを横に並べる数
          ),
          //指定した要素の数分を生成
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue.shade100,
              child: Center(child: Text(texts[index],
                style: const TextStyle(fontSize: 24,),
              )),
            );
          },
        ),
      ),
    );
  }
}