/*
 * Created: Thursday, 14th March 2019 1:28:28 am
 *   
 * Author: Mohsin AR | mohsinazeemrind@gmail.com
 *   
 * Copyright (c) 2019 signbox software Inc.
 */

class User {
  String id;
  String firstName;
  String lastName;
  String avatar;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'].toString(),
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }

//static List<User> fromJsonList(List<dynamic> list){
  static fromJsonList(List<dynamic> list) {
    final users = list.map((i) => User.fromJson(i)).toList();
    print(users);
    return users;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar,
      };
}

class UserErr {
  String message;

  UserErr({this.message});

  static UserErr fromJson(Map<String, dynamic> json) {
    return UserErr(message: json['message']);
  }
}
