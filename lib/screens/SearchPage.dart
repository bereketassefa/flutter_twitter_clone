import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geezonline/widgets/SearchCard.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          title: Container(
            constraints: BoxConstraints(maxWidth: 500, maxHeight: 40),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Search Twitter',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                      width: 3, color: Colors.greenAccent), //<-- SEE HERE
                ),
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.settings,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.blue,
                indicatorWeight: 4.0,
                splashFactory: NoSplash.splashFactory,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "For you",
                  ),
                  Tab(text: "Trending"),
                  Tab(text: "News"),
                  Tab(text: "Sport"),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            SearchCard(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
