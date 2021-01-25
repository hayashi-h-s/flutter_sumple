import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); /*1*/

class MyApp extends StatelessWidget {/*2*/

  // ここに変数ではだめ
  @override
  Widget build(BuildContext context) {
    // // ここに変数をいれなければならない
    // final wordPair = WordPair.random();
    // return MaterialApp(
    //   title: 'Welcome to Flutter',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Welcome to Flutter'),
    //     ),
    //     body: Center(
    //       child: Text(wordPair.asPascalCase),
    //     ),
    //   ),
    // );


    // StatefulWidget を使用した場合
    https://flutter.ctrnost.com/tutorial/tutorial05/
      final wordPair = WordPair.random();
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Center(
            child: RandomWords(),
          ),
        ),
      );
  }
}



// StatelessWidgetで扱うあたいはすべて不変的でありプロパティを変更することはできません
// StatefulWidgetではウィジェットの生存期間中に変更される値を維持することができ、実装するには、少なくとも2つのクラスが必要

// Stateクラスのインスタンスを作成するStatefulWidgetクラス
// Stateクラス (状態)


class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}