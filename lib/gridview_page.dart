import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {
  //画面に描画するデータリスト作成
  final List<String> texts = [
    'box1', 'box2', 'box3', 'box4', 'box5', 'box6',
    'box7', 'box8', 'box9', 'box10', 'box11', 'box12',
  ];

  GridviewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView デモ'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TextField(
                maxLength: 50,
                maxLines: 1,
                decoration: InputDecoration(
                  icon: Icon(Icons.login),
                  labelText: 'ログイン番号',
                  hintText: 'メールアドレスを入力して下さい',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              const TextField(
                maxLength: 10,
                obscureText: true,
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: 'パスワード',
                  hintText: '半角英数記号で入力して下さい',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(20), //4辺すべて同じ値の余白
                  itemCount: texts.length, //要素の数　表示するデータ数の最大値（texts　listの最大値）
                  // GridViewを設定する引数を指定
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10, //ボックス左右間のスペース
                    mainAxisSpacing: 10, //ボックス上下間のスペース
                    crossAxisCount: 2, //ボックスを横に並べる数
                  ),
                  //指定した要素の数分を生成
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blue.shade100,
                      child: Center(
                        child: Text(
                          texts[index],
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(GridviewDemo());
}
