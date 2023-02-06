import 'package:firebase_auth/firebase_auth.dart';
import 'package:wapow/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Wallpapers');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(160, 132, 220, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 92, 187, 1),
        title: _title(),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: _userUid(),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              decoration:
                  BoxDecoration(color: Color.fromRGBO(191, 172, 226, 1)),
            ),
            ListTile(
              title: Text("Sign Out"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _signOutButton(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Close"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(),
      ),
    );
  }
}
