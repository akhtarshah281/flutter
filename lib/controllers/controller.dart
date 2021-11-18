import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:upcoming_movies/models/model.dart';
import 'package:upcoming_movies/repositories/reposit_movies.dart';

class Controller extends ControllerMVC {
  var modelList = <Model>[];
  var globalKey = GlobalKey<ScaffoldState>();

  Controller() {
    // upcomingMovies();
  }

  upcomingMovies() async {
    modelList =  await fetchDatafromAPI() ;
    setState(() {});
    // try {
    //   if (response.statusCode == 200) {
    //     setState(() {
    //       modelList = fetchDatafromAPI() as List<Model>;
    //     });
    //   }
    //   // } else {
    //   //   print('${response.statusCode} : ${response.data.toString()}');
    //   //   throw response.statusCode.toString();
    //   // }
    // } catch (e) {
    //   globalKey.currentState!.showSnackBar(SnackBar(content: Text('failed')));
    // }
  }
}
