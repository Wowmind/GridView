import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Material popular(String images, String heading, String subHeading){
    return Material(
      borderRadius: BorderRadius.circular(30),
     child: Stack(
       children: [
         Container(
           decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.fill,
             image: AssetImage(images),
           ),
             borderRadius: BorderRadius.circular(30),
           ),
         ),
         Positioned(
           left: 10,
           bottom: 10,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(heading,
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontWeight: FontWeight.w800,
               ),
               ),
               Text(subHeading,
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 14,
                   fontWeight: FontWeight.w400,
                 ),
               ),

             ],
           ),
         )

       ],
     ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          padding: EdgeInsets.only(top: 20.0, left: 10),
          child: Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(top: 20.0),
          child: Text('Explore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(top: 20.0, right: 10),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.white,
                  ),

                  hintText: 'Search here...',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  filled: true,
                  fillColor: Colors.grey,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

               Center(
                child: Text('Explore the world with us',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
                ),
              ),

            SizedBox(height: 50,),

            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  ),
                  Text('Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.red.shade200,
                    ),
                  ),
                  Text('Most Viewed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text('All places',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            StaggeredGridView.count(
              shrinkWrap: true,
                primary: false,
                crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              children: [
                popular('assets/maldives.jpg', 'Ocean', 'Travel'),
                popular('assets/switzerland.jpeg', 'Beauty', 'Switz'),
                popular('assets/egypt.jpeg', 'Pyramid', 'Pharohs'),
                popular('assets/mecca.jpg', 'Kaaba', 'Arabia'),
                popular('assets/france.jpeg', 'Effiel Tower', 'Paris'),
                popular('assets/japan.jpg', 'Technology', 'Tokyo'),
                popular('assets/netherland.jpeg', 'Beauty', 'Holland'),
                popular('assets/cuba.jpeg', 'People', 'Lifestyle'),
                popular('assets/singapore.jpeg', 'Beauty', 'Adventure'),
                popular('assets/dubaiii.jpg', 'Sky Scrapper', 'UAE'),
              ],
              staggeredTiles: [
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 4),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 3),
                StaggeredTile.count(2, 2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
