import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/post_model.dart';
import 'widgets/posts.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  List<PostModel> posts = new List<PostModel>();

  void getPosts() async {
    try {
      Map<String, String> requestHeaders = {'Accept': 'application/json'};

      final response = await get(
        'http://10.0.2.2:8000/api/posts/get-posts',
        headers: requestHeaders,
      );

      posts.clear();

      setState(() {
        for (var post in json.decode(response.body)['posts']) {
          posts.add(new PostModel(post));
        }
      });
    } catch (e) {
      print('Error occurred');
    }
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
        ),
        body: Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Posts(posts),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh Posts',
          child: Icon(Icons.refresh),
          onPressed: getPosts,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
