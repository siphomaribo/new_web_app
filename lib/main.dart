import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/incrementer_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IncrementerProvider(),
    child: MaterialApp(
      title: 'Flutter Web App (Sipho)',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            shadowColor: WidgetStateProperty.all(Colors.lightBlue),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 16.3, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
      home: MyHomePage(),
    ),
    );

  }
}

class MyHomePage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<IncrementerProvider>(
          builder: (context, counter, child) {
            return ElevatedButton(
              onPressed: () {
                counter.executeIncrementer();
              },
              child: Text('${counter.value}'),
            );
          },
        ),
      ),
    );
  }
}



