import 'package:flutter/material.dart';
import 'package:nrkfitness/features/shared/views/widgets/day_list_items.dart';


class DayLists extends StatelessWidget {
  const DayLists({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
     shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 17,
      
      padding: const EdgeInsets.all(5.0),
      itemBuilder: (context, index) {
        return const DayListItmes(
          date: '14',
          day: 'Sun',
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 8,
        );
      },
    );
  }
}
