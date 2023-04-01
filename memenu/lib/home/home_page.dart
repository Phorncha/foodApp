import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget categoriesContainer({required String image, required String name}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget bottonContainer(
      {required String image, required int price, required String name}) {
    return Container(
      height: 270,
      width: 200,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 145, 142, 135),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(image),
          ),
          ListTile(
            leading: Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            trailing: Text(
              "\$ $price",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  //icon ในแทป
  Widget drawerItem({required String name, required IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/background1.jpg'),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/11.jpg'),
                ),
                accountName: Text("Flutter"),
                accountEmail: Text("Mitr@gmail.com"),
              ),
              //icon ในแทป
              drawerItem(icon: Icons.person, name: "Profile"),
              drawerItem(icon: Icons.add_shopping_cart, name: "cart"),
              drawerItem(icon: Icons.person, name: "Profile"),
              drawerItem(icon: Icons.shop, name: "Order"),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              drawerItem(icon: Icons.exit_to_app, name: "Log Out"),
              //end icnแทป
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/image/11.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search food",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 145, 142, 135),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          //เมนูใน appbar
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoriesContainer(image: 'assets/image/1.png', name: "All"),
                categoriesContainer(
                    image: 'assets/image/2.png', name: "Burger"),
                categoriesContainer(
                    image: 'assets/image/3.png', name: "Recipe"),
                categoriesContainer(image: 'assets/image/4.png', name: "Pizza"),
                categoriesContainer(image: 'assets/image/5.png', name: "Drink"),
              ],
            ),
          ),
          //เมนู
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 490,
            child: GridView.count(
              shrinkWrap: false,
              primary: false,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                bottonContainer(
                  image: 'assets/image/1.png',
                  name: 'burger1',
                  price: 12,
                ),
                bottonContainer(
                  image: 'assets/image/2.png',
                  name: 'burger2',
                  price: 13,
                ),
                bottonContainer(
                  image: 'assets/image/3.png',
                  name: 'burger3',
                  price: 14,
                ),
                bottonContainer(
                  image: 'assets/image/4.png',
                  name: 'burger4',
                  price: 15,
                ),
                bottonContainer(
                  image: 'assets/image/5.png',
                  name: 'burger5',
                  price: 16,
                ),
                bottonContainer(
                  image: 'assets/image/6.png',
                  name: 'burger6',
                  price: 17,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
