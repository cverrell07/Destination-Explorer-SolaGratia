import 'package:dio/dio.dart';
import '../models/mslocation_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<MsLocation>> fetchPlaces(String text) async {
    final response = await _dio.post(
      'http://10.0.2.2:5000/request',
      data: {'text': text},
    );

    if (response.statusCode == 200) {
      List<MsLocation> places = (response.data as List)
          .map((place) => MsLocation.fromJson(place))
          .toList();
      return places;
    } else {
      throw Exception('Failed to load places');
    }
  }
}
