import 'package:flutter/material.dart';
import 'package:practice_with_provider/app_state.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstPage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("New Temp is: ${provider.temp}"),
            ElevatedButton(
                onPressed: () {
                  provider.updateTemp(110);
                },
                child: Text("Change Temp")),
            SizedBox(height: 20),
            Text("Timer: ${provider.time}"),
            ElevatedButton(
                onPressed: () {
                  provider.getTimer();
                },
                child: Text("Start Timer")),
            SizedBox(height: 20),
            Text("String: ${provider.name}"),
            ElevatedButton(
                onPressed: () {
                  provider.getString("A New String");
                },
                child: Text("Click")),
          ],
        ),
      ),
    );
  }
}
