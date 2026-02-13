import 'package:flutter/material.dart';
import 'package:lotto_app/screens/login.dart';
import 'package:lotto_app/widgets/auth_provider.dart';
import 'package:lotto_app/widgets/guest_appbar.dart';
import 'package:lotto_app/widgets/member_appbar.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar:auth.isLoggedIn
      ?MemberAppbar()
      :GuestAppbar(
        onLoginPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context)=>const Login()));
        },
        onJoinPressed: () {},
      ),
      
      backgroundColor: Theme.of(context).colorScheme.surface,

      body: Center(
        child: Text("Native Splash"),
      ),
    );
  }
}
