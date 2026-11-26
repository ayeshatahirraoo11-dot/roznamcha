import 'package:material_ui/material_ui.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(const RoznamchaApp());
}

/// The root widget. `MaterialApp` gives every screen below it the theme.
class RoznamchaApp extends StatelessWidget {
  const RoznamchaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roznamcha',
      // TODO 1: The design's seed colour is #0F766E. Replace Colors.deepPurple
      // with `const Color(0xFF0F766E)`. Every colour in the app is made from it.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WelcomeScreen(),
    );
  }
}
