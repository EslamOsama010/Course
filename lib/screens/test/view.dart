import 'package:flutter/material.dart';
import 'package:myapp2/screens/test/controller.dart';
import 'package:myapp2/screens/test/model.dart';

class Test2Screen extends StatefulWidget {
  @override
  State<Test2Screen> createState() => _Test2ScreenState();
}

class _Test2ScreenState extends State<Test2Screen> {
  TestController controller = TestController();
  List<TestModel>? model;

  void get() async {
    model = await controller.getData();
    controller.isLoading =false;
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
        child: Center(
          child:controller.isLoading?CircularProgressIndicator(): Text('${model![0].author}'),
        ),
      ),
    );
  }
}
