import 'package:flutter/material.dart';
import 'package:flutter_task3/models/gallery_images.dart';

class Overview_Tab extends StatelessWidget {
  const Overview_Tab({super.key});

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.sizeOf(context);

    return  Scaffold(
  body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
           // color: Theme.of(context).cardColor,
            child: Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Your Balance",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  SizedBox(height: size.height * 0.03),
                  const Text(
                    "\$12,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  const Text(
                    "**** **** **** 6578",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: size.height * 0.03),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Services",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: size.height * 0.02),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: galleryImages.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, i) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  galleryImages[i],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    ),
  ),
);

  }
}
