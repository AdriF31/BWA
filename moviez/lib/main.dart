import 'package:flutter/material.dart';
import 'package:moviez/ui/pages/home_page.dart';
import 'package:moviez/ui/pages/search_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/search-result': (context) => const SearchResult()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
