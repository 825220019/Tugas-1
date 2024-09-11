import 'package:flutter/material.dart';
final TextEditingController searchController = TextEditingController();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 1',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.red)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text("Good Morning Cindy Angelline",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 40,
              color: Colors.black),
          textAlign: TextAlign.left,
            softWrap: true,
            overflow: TextOverflow.visible),
        backgroundColor: Colors.red[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 10.0, top: 25.0, left: 25.0, right: 25.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Column(children: <Widget>[
                  SearchBar(
                    controller: searchController,
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    hintText: 'Search',
                  ),
                ]),
              )),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(25),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildGridItem("images/1.jpg", "Romance"),
                _buildGridItem("images/2.jpg", "Comedy"),
                _buildGridItem("images/3.jpg", "Animation"),
                _buildGridItem("images/4.jpg", "Horror"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink[800],
        unselectedItemColor: Colors.black54,
        iconSize: 40,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset(imagePath,
             height: 110,
             width: 140,
             fit: BoxFit.cover,),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
