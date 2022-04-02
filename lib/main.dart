import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_pad_app/screens/intro_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'note app',
      theme: ThemeData(primaryColor: Colors.teal[200]),
      home: const Splash(),
    );
  }
}
