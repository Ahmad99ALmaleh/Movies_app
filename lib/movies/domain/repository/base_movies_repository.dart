import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/entities/recommendation.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import '../../../core/error/failure.dart';
import '../entities/movie_detail.dart';
import '../usecases/get_recommendation_usecase.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure , List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure , List<Movie>>> getPopularMovies();
  Future<Either<Failure , List<Movie>>> getTopRatedMovies();
  Future<Either<Failure , MovieDetail>> getMovieDetails(MovieDetailsParameters parameters);
  Future<Either<Failure , List<Recommendation>>> getRecommendation(RecommendationParameters parameters);
}