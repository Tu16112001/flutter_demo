import 'package:demo_f/Screen/Home/Category/Category.dart';
import 'package:demo_f/Screen/Home/Product/Popular.dart';
import 'package:demo_f/Screen/Home/ui/Carousel.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Column(
      children: [
        HomeCarousel(),
        Category(),
        Popular()
      ],
    );
  }
}