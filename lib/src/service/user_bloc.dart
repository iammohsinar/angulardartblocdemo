/*
 * Created: Thursday, 14th March 2019 1:22:30 am
 *   
 * Author: Mohsin AR | mohsinazeemrind@gmail.com
 *   
 * Copyright (c) 2019 signbox software Inc.
 */
import 'dart:async';
import 'package:demoblocpattern_angulardart/src/entity/User.dart';
import 'package:http/http.dart' as http;
import 'package:demoblocpattern_angulardart/src/repository/user_repository.dart';

class UserBloc {

  final _userController = StreamController<List<User>>();
  StreamSink<List<User>> get userSink => _userController.sink;
  Stream<List<User>> get userStream {
    return _userController.stream;
  }

  UserBloc(http.Client client) {
    List<User> users;
    UserRepository(client).users.then((a)=> users = a);
    userSink.add(users);
  }
}