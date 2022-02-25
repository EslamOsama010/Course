import 'package:dio/dio.dart';
import 'model.dart';

class WeatherController
{

bool isLoading =true;

  Future<WeatherModel> getData()async{
    var response =  await Dio().get('https://api.openweathermap.org/data/2.5/weather?q=mansoura&appid=509dc5d730ff2dd6003b22f30ae93313');
    WeatherModel model = WeatherModel.fromJson(response.data);
    print(model.clouds);
    return model;

  }
}