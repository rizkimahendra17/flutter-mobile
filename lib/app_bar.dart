import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
  Widget build(BuildContext context){
      return AppBar(
        backgroundColor: Colors.grey[200],
        title: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0),
              margin: EdgeInsets.all(10.0), // Margin di sekitar CircleAvatar
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple, // Warna lingkaran
                child: Icon(
                  Icons.person, // Icon yang ingin Anda gunakan
                  color: Colors.white, // Warna ikon
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              margin: EdgeInsets.only(right: 8.0), // Margin di sebelah kanan teks
              child: Text('Rizki Mahendra'),
            ),
          ],
        ),
      );
  }
}
