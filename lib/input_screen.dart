import 'package:flutter/material.dart';
import 'package:gridview_demo/calender_screen.dart';

import 'graph_screen.dart';
import 'grid_screen.dart';

class GridviewDemo extends StatefulWidget {
  const GridviewDemo({Key? key}) : super(key: key);

  @override
  _GridviewDemoState createState() => _GridviewDemoState();
}

class _GridviewDemoState extends State<GridviewDemo> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    GridScreen(),
    CalenderScreen(), // Calendar Screen Widget
    GraphScreen(), // Graph Screen Widget
  ];

  //Iconクリック時の処理
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: 'パスワード',
                  hintText: '数字で入力して下さい',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                maxLength: 10,
                obscureText: false,
                keyboardType: TextInputType.datetime,
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_view_day),
                  labelText: '日付',
                  hintText: '半角英数記号で入力して下さい',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.mode_edit),
              label: '入力',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'カレンダー',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'グラフ',
            ),
          ],
          currentIndex: _selectedIndex,
          //現在のアクティブインデックスを表示
          backgroundColor: Colors.grey[100],
          //ボトムバーの背景色
          selectedItemColor: Colors.amber[900],
          //Icon選択時にIcon色を指定
          onTap: _onItemTapped, //Iconタップ時のイベント
        ),
      ),
    );
  }
}

void main() {
  runApp(const GridviewDemo());
}
