import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieMovieDbToEntity(MovieMovieDB moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '' && moviedb.backdropPath.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : 'https://www.pngkey.com/png/detail/233-2332677_image-500580-placeholder-transparent.png',
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '' && moviedb.posterPath.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : 'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?b=1&s=612x612&w=0&k=20&c=10Oc-M2aMCHKYLd-BykQnG-k6xXD4JugfY7TVaapL4U=',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );

  static Movie movieDetailsToEntity(MovieDetails movieDetails) => Movie(
    adult: movieDetails.adult,
    backdropPath: (movieDetails.backdropPath != '' && movieDetails.backdropPath.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${movieDetails.backdropPath}'
        : 'https://www.pngkey.com/png/detail/233-2332677_image-500580-placeholder-transparent.png',
    genreIds: movieDetails.genres.map((e) => e.name).toList(),
    id: movieDetails.id,
    originalLanguage: movieDetails.originalLanguage,
    originalTitle: movieDetails.originalTitle,
    overview: movieDetails.overview,
    popularity: movieDetails.popularity,
    posterPath: (movieDetails.posterPath != ''  && movieDetails.posterPath.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${movieDetails.posterPath}'
        : 'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?b=1&s=612x612&w=0&k=20&c=10Oc-M2aMCHKYLd-BykQnG-k6xXD4JugfY7TVaapL4U=',
    releaseDate: movieDetails.releaseDate,
    title: movieDetails.title,
    video: movieDetails.video,
    voteAverage: movieDetails.voteAverage,
    voteCount: movieDetails.voteCount,
  );
}
