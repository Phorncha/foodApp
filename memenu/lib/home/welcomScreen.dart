import 'package:flutter/material.dart';

class WelcomScreen extends StatelessWidget {
  Widget singalProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 290,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Image.network(
              'https://www.mos-th.com/wp-content/uploads/2022/06/Genmai_Matcha_Latte.png'),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: Column(
            children: [
              Text(
                'มัทฉะลาเต้',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' 35 ฿ ',
                style: TextStyle(fontSize: 17, color: Colors.grey),
                //' 35 ฿ ',style: TextStyle( color: Colors.grey,),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '1 แก้ว',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.red,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ]),
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 237, 204, 70),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome To FoodApp"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined, title: 'Home'),
              listTile(icon: Icons.shop_outlined, title: 'Review Cart'),
              listTile(icon: Icons.person_outlined, title: 'my profile'),
              listTile(
                  icon: Icons.notifications_outlined, title: 'Nitification'),
              listTile(icon: Icons.star_outlined, title: 'Rating & Review'),
              Container(
                height: 350,
                child: Column(children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  )
                ]),
              )
            ],
          ),
        ),
      ),
      //appBar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(children: [
          //body "Frui 25% off"
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://as2.ftcdn.net/v2/jpg/03/04/51/07/1000_F_304510744_EY0nyuDvf8uAg9883curalGQBqOD6SeB.jpg'),
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100, bottom: 15),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffd1ad17),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Text(
                              'Menu', // เมนู
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 30,
                                      offset: Offset(5, 5),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '25% off',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'On all vegetables peoducts',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ]),
          ),
          //body ด้านล้าง
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Drinks',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'view all',
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'a la carte',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'view all',
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
