import 'package:dio/dio.dart';
import 'model.dart';
class ParisController
{
  Future<ParisModel> getData()async{
    var response =  await Dio().get('https://api.openweathermap.org/data/2.5/weather?q=mansoura&appid=509dc5d730ff2dd6003b22f30ae93313');
    ParisModel model = ParisModel.fromJson(response.data);
    print(model);
    return model;

  }
}