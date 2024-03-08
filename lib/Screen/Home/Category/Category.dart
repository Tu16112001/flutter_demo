import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final themeMode = ValueNotifier(2);



class Category extends StatelessWidget{
  const Category({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Categories"),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final imageUrl = "https://assets.rawpixel.com/image_150/dG9waWNzL2ljb25zL2Rlc2lnbi0xNjk3NTk2MzcxODk2LWxudjlmcGc5LmpwZw.jpg";
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: 100, // Kích thước của ảnh
                      height: 100, // Kích thước của ảnh
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(imageUrl),
                        ),
                      ),
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa ảnh và văn bản
                    Text(
                      'Category name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
}

}