import 'package:flutter/material.dart';
import 'package:flutter_getx_basic_counter_app/controllers/counter.dart';
import 'package:flutter_getx_basic_counter_app/screens/other.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final CounterController _counterController = Get.put(
    CounterController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Screen was clicked ${_counterController.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _counterController.increment();
                  Get.to<Widget>(OtherPage());
                },
                child: Text(
                  'Open other screen',
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _counterController.increment,
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
