import 'package:flutter/material.dart';
import 'package:upcoming_movies/theme.dart';
import 'package:upcoming_movies/views/upcoming_movies.dart';

void main() {
  runApp(MaterialApp(
    theme: AppTheme.lightTheme,
    home: UpcomingMovies(),
  ));
}

