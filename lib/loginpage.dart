import 'package:flutter/material.dart';

class Myview extends StatelessWidget {
  const Myview({
    Key? key,
    required this.mytext,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String mytext;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Image.asset(
          "assets/home.jpg",
        ),
        const SizedBox(height: 20),
        Text(
          mytext,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your name",
              labelText: "NAME",
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your password",
              labelText: "password",
            ),
            obscureText: true,
          ),
        ),
      ],
    ));
  }
}
