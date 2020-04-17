import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as httpClient;

class ApiService {
  final String apiKey = "32e995b38c98ee6afd2b261f12f370eb";

  void fetchWeatherData(Position position) async {
    final response = await httpClient.get(
        "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey");

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print("response code is ${response.statusCode}");
    }
  }
}
