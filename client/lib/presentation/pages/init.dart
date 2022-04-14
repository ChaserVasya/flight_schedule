import 'package:firebase_core/firebase_core.dart';
import 'package:flight_schedule/application/injection.dart';
import 'package:flight_schedule/firebase_options.dart';
import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool inited = false;

  @override
  void initState() {
    super.initState();
    initApp();
  }

  void initApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await inject();

    setState(() => inited = true);
  }

  @override
  Widget build(BuildContext context) {
    if (inited) Future.microtask(() => Navigator.pushNamed(context, "/arrival"));
    return const Scaffold(body: CircularProgressIndicator());
  }
}
