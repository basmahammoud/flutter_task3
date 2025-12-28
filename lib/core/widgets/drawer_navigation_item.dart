import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(top: 25,left: 10),
        child:  Column(
        children: [
          //profile
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                //padding: EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset("assets/images/im1.png",
                  fit: BoxFit.cover,
                  ),),
              ),
              Expanded(child: ListTile(
                title: Text("bama"),
                subtitle: Text("basmahammoud@gmail.com"),
              ))
            ],
          ),
          // UserAccountsDrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //   ),
          //   currentAccountPicture: const CircleAvatar(
          //     backgroundImage: AssetImage('assets/images/im1.png'),
          //   ),
          //   accountName: const Text("basma"),
          //   accountEmail: const Text("basmahammoud@email.com"),
          // ),
          //navigation
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: const Text("Cards"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.analytics),
            title: const Text("Analytics"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
           ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          const Spacer(),

          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              "Logout",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    );
  }
}
