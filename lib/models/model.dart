

class Model {
  String poster_path;
  String title;
  bool adult;

  Model({required this.poster_path, required this.title, required this.adult});

  factory Model.fromJson(Map<String, dynamic> results){
    return Model(
        poster_path: results['poster_path'],
        title : results['title'],
        adult : results ['adult']
    );
  }
}

