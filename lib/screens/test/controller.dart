import 'package:dio/dio.dart';
import 'package:myapp2/screens/test/model.dart';

class TestController 
{
  bool isLoading = true;
  Future<List<TestModel>> getData()async{
  var response  = await Dio().get('https://breaking-bad-quotes.herokuapp.com/v1/quotes/10');
  var resp = response.data as List;
  List<TestModel> models =[];
  for(int i =0; i<resp.length;i++){
    models.add(TestModel.fromJson(resp[i]));
  }
  print(models[0].author);
  return models;


  }
  
}