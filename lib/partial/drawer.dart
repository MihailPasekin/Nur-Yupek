import 'package:flutter/material.dart';

String uid = '';
class BuildDrawer extends StatefulWidget {
  const BuildDrawer({super.key});

  @override
  State<BuildDrawer> createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("d"),
            leading: const Icon(Icons.home),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text(" "),
            leading: const Icon(Icons.account_box),
            onTap: () {
              if (uid == '0') {
              } else {
                
              }
            },
          ),
          ListTile(
            title: Text(""),
            leading: const Icon(Icons.logout),
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(""),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text("Ok"),
                    ),
                  ],
                ),
              );
              
            },
          ),
          ListTile(
            title: Text(" "),
            leading: const Icon(Icons.create_sharp),
            onTap: () {
              if (uid == '0') {
                
              } else {
                
              }
            },
          ),
          ListTile(
            title: Text(" "),
            leading: const Icon(Icons.language),
            onTap: () {
            },
          ),
          /*
          ListTile(
            title: const Text('Invoice list'),
            onTap:  (){
              if(uid == '0') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              }
              else{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchInvoice(),
                  ),
                );
              }
            },
          ),*/
        ],
      ),
    );
  }


  onClickCreateOrder() {}
}