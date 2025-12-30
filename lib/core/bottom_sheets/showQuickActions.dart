import 'package:flutter/material.dart';

void showQuickActions(BuildContext context) {
  Scaffold.of(context).showBottomSheet(
    (context) {
      return Container(
        padding: const EdgeInsets.all(20),
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ListTile(
            //   title: Text("send"),
            //   leading: Icon(Icons.send),
            // ),
           _actionItem(Icons.send, "Send"),
            _actionItem(Icons.download, "Receive"),
            _actionItem(Icons.payment, "Pay"),
          ],
        ),
      );
    },
  );
}

Widget _actionItem(IconData icon, String title) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(child: Icon(icon)),
      const SizedBox(height: 8),
      Text(title),
    ],
  );
}
