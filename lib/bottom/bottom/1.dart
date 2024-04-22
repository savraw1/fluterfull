import 'package:flutter/cupertino.dart';
import 'package:untitled3/bottom/screens/dashboard.dart';
import 'package:untitled3/bottom/screens/homepage.dart';
import 'package:untitled3/bottom/screens/report.dart';
import 'package:untitled3/bottom/screens/search.dart';

class Nav {
  final Widget page;
  final Widget title;
  Nav({
    required this.page,
    required this.title,
  });
  static List<Nav> get items => [
        Nav(
          page: Dash1(),
          title: Text("Dashboard"),
        ),
        Nav(
            page: Home1(),
            title: Text("Homepage")
        ),
        Nav(
            page: Report1(),
            title: Text("Report")
        ),
    Nav(page: Search1(), title: Text("Search"))
      ];
}
