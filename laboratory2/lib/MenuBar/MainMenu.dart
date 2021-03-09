import 'package:flutter/material.dart';
import '../FilmDataController.dart';
import 'MenuItem.dart';
import 'Dog.dart';
import 'package:laboratory2/FilmDataController.dart';
import 'package:laboratory2/MainScreen.dart';

class MainMenu extends StatefulWidget {
  @override
  MainMenuState createState() {
    return MainMenuState();
  }
}

class MainMenuState extends State<MainMenu> {
  Widget _appBarTitle;
  Color _appBarBackgroundColor = Color(0xFF185716);
  MenuItem _selectedMenuItem;
  List<MenuItem> _menuItems;
  List<Widget> _menuOptionWidgets = [];
  Color _menuItemColor;

  @override
  initState() {
    super.initState();

    _menuItems = createMenuItems();
    _selectedMenuItem = _menuItems.first;
    _appBarTitle = new Text(_menuItems.first.title);
  }

  _getMenuItemWidget(MenuItem menuItem) {
    return menuItem.func();
  }

  _onSelectItem(MenuItem menuItem) {
    setState(() {
      _selectedMenuItem = menuItem;
      _appBarTitle = new Text(menuItem.title);
    });
    Navigator.of(context).pop(); // close side menu
  }

  @override
  Widget build(BuildContext context) {
    _menuOptionWidgets = [];

    for (var menuItem in _menuItems) {
      _menuOptionWidgets.add(new Container(
          decoration: new BoxDecoration(
              color: menuItem == _selectedMenuItem
                  ? Colors.grey[200]
                  : Colors.white),
          child: new ListTile(
              leading: new Image.asset(menuItem.icon),
              onTap: () => _onSelectItem(menuItem),
              title: Text(
                menuItem.title,
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff0e0d0d),
                    fontWeight: menuItem == _selectedMenuItem
                        ? FontWeight.bold
                        : FontWeight.w300),
              ))));

      _menuOptionWidgets.add(
        new SizedBox(
          child: new Center(
            child: new Container(
              margin: new EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
              height: 0.3,
              color: Colors.grey,
            ),
          ),
        ),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: _appBarTitle,
        backgroundColor: _appBarBackgroundColor,
        centerTitle: true,
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
                child: new ListTile(
                    leading: new Image.asset('assets/media/icons/user_account_icon.png'),
                    title: Text("Nickname")),
                margin: new EdgeInsetsDirectional.only(top: 20.0),
                color: Colors.white,
                constraints: BoxConstraints(maxHeight: 90.0, minHeight: 90.0)),
            new SizedBox(
              child: new Center(
                child: new Container(
                  margin:
                  new EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
                  height: 0.3,
                  color: Colors.black,
                ),
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Column(children: _menuOptionWidgets),
            ),
          ],
        ),
      ),
      body: _getMenuItemWidget(_selectedMenuItem),
    );
  }
  List<MenuItem> createMenuItems() {
    final menuItems = [
      new MenuItem("Home", 'assets/media/icons/homeScreen.png', () => new MainScreen()),
      new MenuItem("Cows", 'assets/media/icons/settings_icon.png', () => new Dogs()),
      new MenuItem("Doves", 'assets/media/icons/add_media_icon.png', () => new Dogs()),
    ];
    return menuItems;
  }

}