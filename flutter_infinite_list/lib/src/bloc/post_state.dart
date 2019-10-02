import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/src/bloc/post_event.dart';

abstract class PostState extends Equatable {
  PostState([List props = const []]) : super(props);
}

class PostUninitilized extends PostState {
  @override
  String toString() => 'PostUninitialize';
}

class PostLoaded extends PostState {}

class PostError extends PostEvent {
  @override
  String toString() => 'PostError';
}
