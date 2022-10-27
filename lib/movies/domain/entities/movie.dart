import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  late final int id;
  late final String title;
  late final String backdropPath;
  late final List<int> genreIds;
  late final String overview;
  late final double voteAverage;
  late final String releaseDate;
//backgroundPath
  Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object> get props => [
    id,
    title,
    backdropPath,
    genreIds,
    overview,
    voteAverage,
    releaseDate,
  ];


}

