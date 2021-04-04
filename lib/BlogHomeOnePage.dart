import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Map> articles = [
  {
    "title":
        "It is no measure of health to be well adjusted to a profoundly sick society.",
    "author": "Jiddu Krishnamurti",
    "time": "4 min read",
    "image_url": "assets/images/forum1.jpg",
  },
  {
    "title":
        "When wealth is lost, nothing is lost; when health is lost, something is lost; when character is lost, all is lost.",
    "author": "Billy Graham",
    "time": "4 min read",
    "image_url": "assets/images/forum2.jpg",
  },
  {
    "title":
        "Good health is not something we can buy. However, it can be an extremely valuable savings account.",
    "author": "Anne Wilson Schaef",
    "time": "4 min read",
    "image_url": "assets/images/forum3.jpg",
  },
  {
    "title":
        "There's nothing more important than our good health - that's our principal capital asset.",
    "author": "Arlen Specter",
    "time": "4 min read",
    "image_url": "assets/images/forum4.jpg",
  },
  {
    "title": "Your body hears everything your mind says.",
    "author": "Naomi Judd",
    "time": "4 min read",
    "image_url": "assets/images/forum5.jpg",
  },
  {
    "title": "A healthy outside starts from the inside.",
    "author": "Robert Urich",
    "time": "4 min read",
    "image_url": "assets/images/forum6.jpg",
  },
  {
    "title":
        "Sleep is that golden chain that ties health and our bodies together.",
    "author": "Thomas Dekker",
    "time": "4 min read",
    "image_url": "assets/images/forum7.jpg",
  },
  {
    "title": "Health is not valued till sickness comes.",
    "author": "Thomas Fuller",
    "time": "4 min read",
    "image_url": "assets/images/forum8.jpg",
  },
];

class BlogHomeOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/blog/bhome1.dart";
  final Color primaryColor = Color(0xffFD6592);
  final Color bgColor = Color(0xffF9E0E3);
  final Color secondaryColor = Color(0xff324558);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            textTheme: TextTheme(
              title: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: IconThemeData(color: secondaryColor),
            actionsIconTheme: IconThemeData(
              color: secondaryColor,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).buttonColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Quotes'),
            leading: Icon(Icons.menu),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
          // ? -----------------------------------------------------------------
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
              Container(
                child: Text("Tab 2"),
              ),
              Container(
                child: Text("Tab 3"),
              ),
              Container(
                child: Text("Tab 4"),
              ),
              Container(
                child: Text("Tab 5"),
              ),
            ],
          ),
          // ? -----------------------------------------------------------------
        ),
      ),
    );
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];
    // final String sample = "assets/images/test.jpg";
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: bgColor,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 80.0,
                  child: Image.asset(
                    article["image_url"],
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundImage:
                                    AssetImage('assets/images/user.png'),
                                // backgroundColor: primaryColor,
                              ),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: TextStyle(fontSize: 16.0)),
                            WidgetSpan(
                              child: const SizedBox(width: 20.0),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
