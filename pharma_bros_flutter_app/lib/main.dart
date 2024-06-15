import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/screens/general/root_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PharmaBrosFlutterApp());
}

class PharmaBrosFlutterApp extends StatelessWidget {
  const PharmaBrosFlutterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RootScreen(),
    );
  }
}
