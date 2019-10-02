import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_infinite_list/src/bloc/bloc.dart';
import 'package:flutter_infinite_list/src/bloc/post_event.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final http.Client httpClient;

  PostBloc({@required this.httpClient});
  @override
  PostState get initialState => null;

  @override
  Stream<PostState> mapEventToState(PostEvent event) {
    return null;
  }
}
