import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/src/bloc/post_event.dart';
import 'package:flutter_infinite_list/src/models/models.dart';

abstract class PostState extends Equatable {
  PostState([List props = const []]) : super(props);
}

class PostUninitilized extends PostState {
  @override
  String toString() => 'PostUninitialize';
}

class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax}) : super([posts, hasReachedMax]);
  PostLoaded copyWith({List<Post> posts, bool hasReachedMax}) {
    return PostLoaded(
        posts: posts ?? this.posts,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }

  @override
  String toString() =>
      'PostLoaded{post:${posts.length},hasReachedMax:$hasReachedMax}';
}

class PostError extends PostEvent {
  @override
  String toString() => 'PostError';
}
