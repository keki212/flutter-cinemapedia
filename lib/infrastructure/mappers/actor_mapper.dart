import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast actor) => Actor(
    id: actor.id,
    name: actor.name,
    profilePath: (actor.profilePath != null && actor.profilePath!.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${actor.profilePath}'
        : 'https://cdn.vectorstock.com/i/500p/43/97/default-avatar-photo-placeholder-icon-grey-vector-38594397.jpg',
    character: actor.character,
  );
}
