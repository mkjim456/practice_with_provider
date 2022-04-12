import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_with_provider/app_state.dart';
import 'package:practice_with_provider/first_page.dart';
import 'package:practice_with_provider/second_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Appprovider = Provider.of<AppState>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(CupertinoIcons.arrow_up_arrow_down_circle),
          onPressed: () {
            Appprovider.updateWidget();
          }),
      body: Consumer<AppState>(builder: (context, provider, child) {
        return provider.change ? SecondPage() : FirstPage();
      }),
    );
  }
}
