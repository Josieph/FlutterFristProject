import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LEXUS Shop'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),



      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=3"),
              ),
              accountName: Text("Hello, Agent!"),
              accountEmail: Text("Lexus@luxury.com"),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.teal),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.teal),
              title: Text("My Cart"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.teal),
              title: Text("Favorites"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.teal),
              title: Text("Profile"),
              onTap: () {},
            ),

            Spacer(),

            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Logout", style: TextStyle(color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.teal.shade50,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/100'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome to Lexus Shop!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.teal)),
                      Text('Discover products and explore Luxury',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications_none),
                ],
              ),
            ),

            SizedBox(height: 10),


            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryBox('SUV'),
                  categoryBox('Sedan'),
                  categoryBox('Hatchpack'),
                  categoryBox('HYBRID'),
                  categoryBox('ELECTRIC'),
                  categoryBox('Sport'),
                ],
              ),
            ),

            SizedBox(height: 10),


            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.network(
                              'https://www.lexus.com/content/dam/lexus/images/microsites/suvs/tiles/Lexus-LX-SUV-LEX-LXG-MY24-0027.01-555x400.jpg',
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              color: Colors.teal,
                              child: Text('\$110,000', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lexus LX',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('This is a short description of this LX product.'),
                            SizedBox(height: 5),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.favorite_border, color: Colors.teal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.network(
                              'https://www.lexus.com/content/dam/lexus/images/microsites/suvs/tiles/Lexus-GX-SUV-LEX-GXG-MY24-0072-555x400.jpg',
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              color: Colors.teal,
                              child: Text('\$66,000', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lexus GX',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('This is a short description of this GX product.'),
                            SizedBox(height: 5),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.favorite_border, color: Colors.teal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.network(
                              'https://www.lexus.com/content/dam/lexus/images/microsites/suvs/tiles/Lexus-TX-SUV-LEX-TXG-MY24-0007-555x400.jpg',
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              color: Colors.teal,
                              child: Text('\$66,000', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lexus TX',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('This is a short description of this TX product.'),
                            SizedBox(height: 5),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.favorite_border, color: Colors.teal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            )

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget categoryBox(String name) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.teal.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(name)),
    );
  }

  Widget productCard(String image, String title, String desc, String price) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.network(
                  image,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  color: Colors.teal,
                  child: Text(
                    price,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(desc),
                SizedBox(height: 5),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.favorite_border, color: Colors.teal)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
