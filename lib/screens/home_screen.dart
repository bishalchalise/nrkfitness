import 'package:flutter/material.dart';
import 'package:nrkfitness/features/shared/views/widgets/day_list.dart';
import 'package:nrkfitness/features/shared/views/widgets/home_card.dart';
import 'package:nrkfitness/screens/user_profile.dart';
import 'package:nrkfitness/utilities/app_routes.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
      if (_selectedIndex == index) {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );        
      }
      else {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserProfile()),
            );        
      }
    
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 65.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              _headerBuilder(),
              const Divider(
                thickness: 1,
                color: Color(0xffFFE9E9),
              ),
              _dateDisplay(),
              const SizedBox(
                height: 10,
              ),
              dayListBuilder(context),
              const SizedBox(
                height: 14.0,
              ),
              _bannerBuilder(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                AppRoutes.gymSchedulePage, 
                  );
                },
                child:  const HomeCards(
                cardColor: Color(0xffFFF5F0), 
                mainText: 'Gym \nSchedules', 
                headText: 'Learning', 
                headingColor: Color(0xffF2AB87),
                 textColor:  Color(0xffE55913),
                  image: 'assets/images/png/Vector.png',
                   topPad: 23.11,),
              ),
              const SizedBox(height: 16.0,),
              const  HomeCards(
                cardColor: Color(0xffF0FFF9), 
                mainText: 'Workout \nRoutines', 
                headText: 'Learning', 
                headingColor: Color(0xff8AC6AE),
                 textColor:  Color(0xff00C677),
                  image: 'assets/images/png/card2.png',
                   topPad: 23.77,), 
                  const SizedBox(height: 16.0,),
              const HomeCards(
                 mainText: 'Diet \nPlanning',
                 cardColor: Color(0xffF7F0FF),
                 headingColor: Color(0xffB681F2),
                 textColor: Color(0xff7200F4),
                 image: 'assets/images/png/card3.png',
                  headText: 'Learning', 
                  topPad: 39.11,
                  ),
                  const SizedBox(height: 16.0,),
               const HomeCards(
                 mainText: 'Cardio \nFitness',
                 cardColor: Color(0xffE3F7FF),
                 headingColor: Color(0xff81AEF2),
                 textColor: Color(0xff0053F4),
                 image: 'assets/images/png/card4.png',
                  headText: 'Learning', 
                  topPad: 52.11,
                  ),
            
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_gymnastics,
            ),
            label: 'Gym',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffF70000),
        onTap:_onItemTapped,
      ),
    );
  }
}

Widget _headerBuilder() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 11.0,
              color: Color(0xffFFA1A1),
            ),
          ),
          Text(
            'Naresh',
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xffFF0000),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 85,
        width: 75,
        child: Image.asset(
          'assets/images/png/image 1.png',
          alignment: Alignment.topRight,
        ),
      )
    ],
  );
}

Widget _dateDisplay() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: const [
          Text(
            'Sep 22',
            style: TextStyle(
                color: Color(
                  0xffFF0000,
                ),
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            'W12',
            style: TextStyle(
                color: Color(
                  0xffFFA1A1,
                ),
                fontSize: 11,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFF0000),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffFF0000),
          ),
        ],
      )
    ],
  );
}

Widget dayListBuilder(BuildContext context) {
  return const SizedBox(height: 77, child: DayLists());
}

Widget _bannerBuilder() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: const Color(0xffDAFFD3),
            borderRadius: BorderRadius.circular(8.0)),
        height: 33.0,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(
            'You can still do it!',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff18C33E),
                fontWeight: FontWeight.w500),
          ),
        ]),
      ),
      const SizedBox(
        height: 14,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        height: 33.0,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(
            'Log for today, 19th',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xffF70000),
                fontWeight: FontWeight.w500),
          ),
        ]),
      ),
    ],
  );
}

// Widget _cards(
//   final String mainText,
//   final Color cardColor,
//   final Color headingColor,
//   final Color textColor,
//   final String image,
// ) {
//   return HomeCards(
//       headText: 'Learning',
//       mainText: mainText,
//       cardColor: cardColor,
//       headingColor: headingColor,
//       textColor: textColor,
//       image: image);
// }
