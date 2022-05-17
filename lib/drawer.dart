import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const UserAccountsDrawerHeader(
                  accountName: Text("Pratyush"),
                  accountEmail: Text("pratyush1425@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.vanityfair.com/photos/5fcfd7bde9fd5209684824fd/master/w_2560%2Cc_limit/1178141599"),
                  )),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("bhut saara paisa"),
                trailing: Icon(Icons.edit),
              ),
              const ListTile(
                leading: Icon(Icons.details),
                title: Text("Details"),
                subtitle: Text("kuch khaas nhi"),
                trailing: Icon(Icons.edit),
              ),
              const ListTile(
                leading: Icon(Icons.arrow_upward),
                title: Text(" achievements"),
                subtitle: Text("nhi bilkul nhi"),
                trailing: Icon(Icons.edit),
              )
            ],
          ),
        );
  }
}