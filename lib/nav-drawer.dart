import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // drawer header
          _drawerHeader(),
          // drawer item
          _drawer_item(
              icon: Icons.folder,
              text: 'My Files',
              onTap: () => print('Menekan My Files')),
          _drawer_item(
              icon: Icons.group,
              text: 'Shared with me',
              onTap: () => print('Menekan Shared with me')),
          _drawer_item(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: () => print('Menekan Recent')),
          _drawer_item(
              icon: Icons.delete,
              text: 'Trash',
              onTap: () => print('Menekan Trash')),
          // divider
          Divider(
            height: 26.0,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.0, top: 12.0, bottom: 12.0),
            child: Text(
              'Labels',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
          ),
          _drawer_item(
              icon: Icons.bookmark,
              text: 'Bookmark',
              onTap: () => print('Menekan Bookmark')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    onDetailsPressed: () {
      showUserDetail();
    },
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/pexels-1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('assets/images/user-1.png'),
        fit: BoxFit.cover,
      ),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
          image: AssetImage('assets/images/user-2.png'),
          fit: BoxFit.cover,
        ),
      ),
      ClipOval(
        child: Image(
          image: AssetImage('assets/images/user-3.png'),
          fit: BoxFit.cover,
        ),
      ),
    ],
    accountName: Text('Yusuf Rizal'),
    accountEmail: Text('rizal@inixindo.co.id'),
  );
}

void showUserDetail() {
  print('onDetailsPressed');
}

Widget _drawer_item({IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      // per 1 baris
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 26.0),
          child: Text(
            text!,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
