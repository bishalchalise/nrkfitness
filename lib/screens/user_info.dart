import 'package:flutter/material.dart';
import 'package:nrkfitness/features/shared/views/widgets/app_button.dart';
import 'package:nrkfitness/features/shared/views/widgets/appinput_info.dart';
import 'package:nrkfitness/utilities/app_routes.dart';



class UserInfo extends StatelessWidget {
  final bool? isRequired;
  const UserInfo({
  super.key,
  this.isRequired = false, 
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 68.0,
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerBuilder(context),
            const SizedBox(
              height: 10.0,
            ),
            _imagePicker(context),
            const SizedBox(
              height: 10.0,
            ),
            _inputNumber(context),
            const SizedBox(
              height: 10.0,
            ),
            _inputFirstName(context),
            const SizedBox(
              height: 10.0,
            ),
            _inputMiddleName(),
            const SizedBox(
              height: 10.0,
            ),
            _inputLastName(),
            const SizedBox(
              height: 10.0,
            ),
            _inputEmail(),
            const SizedBox(
              height: 10.0,
            ),
            _heightWeightBuilder(),
            const SizedBox(
              height: 10.0,
            ),
            _doneBuilder(context),
          ],
        ),
      ),
    );
  }
}

Widget _headerBuilder(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
       Text(
        'Great to see you here!',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      Text(
        'Tell us a little about yourself',
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.tertiary,
            ),
      ),
    ],
  );
}

Widget _imagePicker(BuildContext context) {
  return Center(
    child: Column(
      children:  [
        Icon(
          Icons.add,
          size: 72,
          color:Theme.of(context).colorScheme.primary,
        )
      ],
    ),
  );
}

Widget _inputNumber(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      Text(
        'Mobile number',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
      const AppInputInfo(
        hintText: 'Phone Number',
        suffixIcon: Icon(
          Icons.check_circle,
          color: Color(0xff6AC868),
        ),
      ),
    ],
  );
}

Widget _inputFirstName(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      Row(
        children:  [
          Text(
            'Name ' ,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.tertiary,
                ),
          ),
            Text(
            '*' ,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.tertiary,
                ),
          ),

        ],
      ),
      const SizedBox(height: 10.0,),
      const AppInputInfo(hintText: 'First Name'),
    ],
  );
}

Widget _inputMiddleName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      AppInputInfo(hintText: 'Middle Name'),
    ],
  );
}

Widget _inputLastName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      AppInputInfo(hintText: 'Last Name'),
    ],
  );
}

Widget _inputEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      Row(
        children: const [
          Text(
            'Email (for account recovery) ',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xffB5B5B5)),
          ),
           Text(
            '*',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xffF70000)),
          ),
        ],
      ),
      const SizedBox(
        height: 10.0,
      ),
      const AppInputInfo(
        hintText: 'Email Adress',
        suffixIcon: Icon(
          Icons.check_circle,
          color: Color(0xff6AC868),
        ),
      ),
      const SizedBox(
        height: 5.0,
      ),
      const Text(
        'This email will be required for account recovery.',
        style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: Color(0xffB5B5B5)),
      ),
    ],
  );
}

Widget _heightWeightBuilder() {
  return Column(
    children: [
      Row(
        children: const [
          Expanded(
              child: Text(
            'Height',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xffB5B5B5)),
          )),
          Expanded(
              child: Text(
            'Weight',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xffB5B5B5)),
          )),
        ],
      ),
      const SizedBox(
        height: 10.0,
      ),
      Row(
        children: const [
          Expanded(
              child: AppInputInfo(
            hintText: 'Height',
          )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'cm',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: AppInputInfo(
              hintText: 'Weight',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'kg',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      )
    ],
  );
}

Widget _doneBuilder(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(child: AppButton(text: 'Done', onPressed: () {
           Navigator.pushNamed(
              context,
             AppRoutes.homeScreen,
            );
        })),
      ],
    ),
  );
}
