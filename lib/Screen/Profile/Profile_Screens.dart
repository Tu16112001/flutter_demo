import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Column(
      children: [
        Text("Profile screen"),
        Text("Firt Section"),
        Text("Second section")
      ],
    );
  }
}