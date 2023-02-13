import 'package:flutter/material.dart';
import 'package:nrkfitness/features/shared/views/widgets/home_card.dart';
import 'package:nrkfitness/utilities/app_strings.dart';


class GymSchedule extends StatelessWidget {
  const GymSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child:  Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title:  Text(
          'Back',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [_gymHeadBuilder(), _gymBodyBuilder(context)],
        ),
      ),
    );
  }
}

Widget _gymHeadBuilder() {
  return const HomeCards(
    cardColor: Color(0xffFFF5F0),
    mainText: 'Gym \nSchedules',
    headText: 'Learning',
    headingColor: Color(0xffF2AB87),
    textColor: Color(0xffE55913),
    image: 'assets/images/png/Vector.png', 
    topPad: 18.0,
  );
}

Widget _gymBodyBuilder(BuildContext context) {
  
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.title,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          
          AppString.para1,
          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color:  Color(0xff808080),), 
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 16.0,
        ),
        Image.asset('assets/images/jpg/gym.jpg'),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          AppString.title2,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600,),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          AppString.para2,
          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Color(0xff808080)),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 16.0,
        ),
        RichText(
          text: TextSpan(
            text: AppString.title3,
            style: const TextStyle(color: Color(0xff808080), 
            fontWeight: FontWeight.w500, 
            fontSize: 12.0,
            ), 
             children:  <TextSpan>[
  
            TextSpan(
              text: AppString.title4, 
              style:  TextStyle(color: Theme.of(context).colorScheme.primary,
              ),
              ),
            TextSpan(
              text: AppString.title5,
               style: const TextStyle(
                color: Color(0xff808080), 
               ),
               ),
    ],
          ),
        ),
      ],
    ),
  );
}
