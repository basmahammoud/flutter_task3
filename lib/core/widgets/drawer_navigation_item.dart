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
              SizedBox(
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
              Navigator.pushNamed(context, '/cards');

            },
          ),
          ListTile(
            leading: const Icon(Icons.analytics),
            title: const Text("Analytics"),
            onTap: () {
              Navigator.pushNamed(context, '/analytic');
            },
          ),
           ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("settings"),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
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
