import 'package:dio/dio.dart';
import 'package:upcoming_movies/models/model.dart';

String url =
    'https://api.themoviedb.org/3/movie/upcoming?api_key=edd906498cad9016d344d85d5598b91b';

Future<List<Model>> fetchDatafromAPI() async {
  Dio dio = Dio();
Response response;
  response = await dio.get(url);

  return (response.data['results'] as List)
      .map((e) => Model.fromJson(e))
      .toList();
}
