import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pomodoro.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (context) => PomodoroStore()),
      ],
      child: MaterialApp(
        title: 'Pomodoro',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            primary: Colors.white,
          ),
          useMaterial3: true,
        ),
        home: Pomodoro(),
      ),
    );
  }
}
