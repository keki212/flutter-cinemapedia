import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'package:cinemapedia/domain/entities/actor.dart';

final actorsByMovieProvider =
    StateNotifierProvider<ActorsNotifier, Map<String, List<Actor>>>((ref) {
      final getActors = ref.watch(actorsRepositoryProvider).getActorsByMovie;
      return ActorsNotifier(getActors: getActors);
    });

typedef ActorCallback = Future<List<Actor>> Function(String movieId);

class ActorsNotifier extends StateNotifier<Map<String, List<Actor>>> {
  final ActorCallback getActors;
  ActorsNotifier({required this.getActors}) : super({});

  Future<void> loadActors(String movieId) async {
    if (state.containsKey(movieId)) return;

    final List<Actor> actors = await getActors(movieId);
    state = {...state, movieId: actors};
  }
}
