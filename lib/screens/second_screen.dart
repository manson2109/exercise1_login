import 'package:exercise1_login/Models/newsfeed.dart';
import 'package:exercise1_login/services/newsfeed_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<Newsfeed> futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = ApiService() as Future<Newsfeed>;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Newsfeed>(
            future: futureNews,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
