import 'package:dio/dio.dart';
import 'package:myapp2/screens/bad/model.dart';

class BadController {
  bool isLoading = true;
  
  Future<BadModel> gtData()async{
      var response = await Dio().get('https://api.themoviedb.org/3/movie/550?api_key=2001486a0f63e9e4ef9c4da157ef37cd');
      BadModel models = BadModel.fromJson(response.data);
      print(models);
      return models;
  }
}






