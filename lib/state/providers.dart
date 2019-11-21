import 'package:flutter_structure/state/auth_user_view_model.dart';
import 'package:provider/provider.dart';

// Main provider for all of the elements of the state
// You must register all your state elements here as viewmodels
List<SingleChildCloneableWidget> providers = [
  ChangeNotifierProvider(builder: (context) => AuthUserViewModel()), // authUser
];
