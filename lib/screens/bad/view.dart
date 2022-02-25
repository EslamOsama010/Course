import 'package:flutter/material.dart';
import 'package:myapp2/screens/bad/controller.dart';
import 'package:myapp2/screens/bad/model.dart';

class BadScreen extends StatefulWidget {

  @override
  State<BadScreen> createState() => _BadScreenState();
}

class _BadScreenState extends State<BadScreen> {
  BadModel? model;
  BadController controller = BadController();
void get()async{

   model = await controller.gtData();
   controller.isLoading = false;
   setState(() {
   });

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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(child:controller.isLoading?CircularProgressIndicator(): Text('${model!.title}',style: TextStyle(fontSize: 20,color: Colors
                .pink),),),
              ),
              SizedBox(height: 20,),
              controller.isLoading?CircularProgressIndicator():Image.network('https://image.tmdb.org/t/p/original/${model!.backdropPath}'),
            ],
          ),
        ),
      ),
    );
  }
}
