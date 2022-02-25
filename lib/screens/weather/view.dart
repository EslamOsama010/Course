import 'package:flutter/material.dart';

import 'controller.dart';
import 'model.dart';

class WeatherScreen extends StatefulWidget {
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherController controller = WeatherController();
  WeatherModel? model;

  void get() async {
    model = await controller.getData();
    controller.isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            controller.isLoading
                ? CircularProgressIndicator()
                : Text(model!.clouds.toString()),
          ],
        ),
      ),
    );
  }
}
