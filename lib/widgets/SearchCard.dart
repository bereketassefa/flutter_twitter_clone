import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        width: double.infinity,
        height: 300,
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: Colors.red,
              child: Image.network(
                "https://images.pexels.com/photos/15213530/pexels-photo-15213530.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 14,
              child: Container(
                // width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.transparent],
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Entertainment ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '5 min ago',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text("K-POP",
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      ListTile(
          title: Text("#SpaceExploration",
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Trending with NASA"),
          trailing: Text("45k"),
          onTap: () {}),
      ListTile(
          title:
              Text("Caturday", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Trending with NASA"),
          trailing: Text("21.3K"),
          onTap: () {}),
    ]);
  }
}
