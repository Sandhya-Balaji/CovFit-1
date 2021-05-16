import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './authen/signin.dart';
import '../models/user.dart';
import 'home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final u = Provider.of<MyUser>(context);
    if(u == null)
    {
      return Signin();
    }
    else {
      return HomePage();
    }
  }
}
