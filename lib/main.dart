import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/screens/startingwidget/starting_widget_one.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
         primaryColor: Colors.black,
        brightness: Brightness.light,
        textTheme: const TextTheme(titleMedium: TextStyle(
        color: Colors.black,)),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {'/': (context) => const App()},
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xFFF2F7FA),
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.1),
                child: StartImage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}