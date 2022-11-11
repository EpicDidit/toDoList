import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todo_widgets.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void _tapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  static const List<Widget> _myWidgets = <Widget>[
    HomePage(),
    TodoWidget(),
  ];

  static const List<Widget> _appBarTitle = <Widget>[
    Text(
      'Home',
      style: TextStyle(color: Colors.white),
    ),
    Text(
      'ToDo',
      style: TextStyle(color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: _appBarTitle[_selectIndex],
      ),
      body: _myWidgets[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _tapItem,
        currentIndex: _selectIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_sharp), label: 'toDo'),
        ],
      ),
    );
  }
}
