
import 'package:example_project/drawer.dart';
import 'package:example_project/loginpage.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_final_fields
  TextEditingController _nameController = TextEditingController();
  var mytext = "Welcome ";

  // ignore: prefer_typing_uninitialized_variables
  var data;
  @override
  void initState() {
    super.initState();
   // getData();
  }

  // getData() async {
  //   var res = await http.get('https://jsonplaceholder.typicode.com/users');
  //   data = jsonDecode(res.body);
  //   // ignore: avoid_print
  //   print(res.body);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Myview(mytext: mytext, nameController: _nameController),
            // child: (data != null)
            //     ? ListView.builder(
            //         itemBuilder: (context, index) {
            //           return ListTile(
            //             title: data[index]["title"],
            //           );
            //         },
            //         itemCount: data.length,
            //       )
            //     : const Center(child: CircularProgressIndicator())
        ),
        drawer: const MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            mytext = "Welcome " + _nameController.text;
            setState(() {});
          },
          child: const Icon(
            Icons.edit,
          ),
        ));
  }
}
