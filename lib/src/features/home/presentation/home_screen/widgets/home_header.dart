import 'package:flutter/material.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/greeting_title_home.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          SizedBox(
            height: 65,
            width: 65,

            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(30),
              child: Image.asset(
                'lib/constants/images/profilbild.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Icon(
          //   Icons.circle,
          //   size: 60,
          // ), //!                         Profilbild
          GreetingTitleHome(name: "Bahri"),
          SizedBox(width: 35),
        ],
      ),
    );
  }
}
