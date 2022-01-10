import 'package:exercise1_login/models/newsfeed.dart';
import 'package:exercise1_login/services/newsfeed_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<Newsfeed> futureNews;
  bool _isLoading = false;
  List<Content> _content = [];
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    retrieveData();
  }

  Future retrieveData() async {
    setState(() {
      _isLoading = true;
    });
    await ApiService().getNewsfeed(10).then((value) {
      setState(() {
        _isLoading = false;
        _content = value.data!;
      });
    }).catchError((err) {
      setState(() {
        _isLoading = false;
        errorMessage = err.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Material(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(
                    _content[index].publishDate.toString(),
                  ),
                  subtitle: Text(_content[index].image!),
                  contentPadding: const EdgeInsets.all(10.0),
                  leading: Image.network(
                    _content[index].image!,
                    fit: BoxFit.contain,
                    height: 50.0,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: _content.length,
            ),
          );
  }
}
