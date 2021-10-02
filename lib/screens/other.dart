import 'package:flutter/material.dart';
import 'package:flutter_getx_basic_counter_app/controllers/counter.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
  OtherPage({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen was clicked ${_counterController.counter.value}'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                _counterController.increment();
                Get.back<Widget>();
              },
              child: Text(
                "Open Other Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
