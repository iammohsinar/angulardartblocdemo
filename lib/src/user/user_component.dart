import 'package:angular/angular.dart';
//import 'package:http/http.dart' as http;
import 'package:demoblocpattern_angulardart/src/service/user_bloc.dart';
import 'package:http/browser_client.dart';
import 'dart:async';

@Component(
  selector: 'user-component',
  templateUrl: 'user_component.html',
  directives:[coreDirectives],
  pipes: [commonPipes]
)
class UserComponent {
  var name = 'Angular';
  UserBloc userBloc;
  var users;  
  UserComponent() {
     this.userBloc = UserBloc(BrowserClient());
  }
}