import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyWhQ3AXaYbMFec4rklSuBIOdw44LYPArvCw&usqp=CAU'),
            ),
          )
        ],
      ),
    );
  }
}
