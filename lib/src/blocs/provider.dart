import 'package:flutter/material.dart';
import 'package:form_validation/src/blocs/login_bloc.dart';

class Provider extends InheritedWidget{

  final loginBloc = LoginBloc();

  Provider({Key key, Widget child})
    : super(key: key,child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static LoginBloc of (BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc; 
  }

  
}