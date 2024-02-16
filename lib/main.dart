import 'package:flutter/material.dart';
import 'package:inshortui/controllers/provider.dart';
import 'package:inshortui/view/discovery/discovery.page.dart';
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
        ChangeNotifierProvider(create: (context) => FeedProvider()),
      ],
      child: MaterialApp(
        title: 'Inshort UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DiscoverScreen(),
      ),
    );
  }
}
