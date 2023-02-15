import 'package:flutter/material.dart';
import 'package:nrkfitness/features/authentication/viewmodels/auth_vm.dart';
import 'package:nrkfitness/features/shared/views/widgets/app_button.dart';
import 'package:nrkfitness/features/shared/views/widgets/app_inut.dart';
import 'package:nrkfitness/utilities/app_routes.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final authVm = Provider.of<AuthVm>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _headerBuilder(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    textBuilder(context),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _inputBuilder(authVm),
                  ],
                ),
              ),
              _loginButtonBuilder(context, authVm),
              const SizedBox(
                height: 10,
              ),
              _skipLogin(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _headerBuilder() {
  return SizedBox(
    height: 125.0,
    width: 125.0,
    child: Image.asset(
      'assets/images/png/image 1.png',
    ),
  );
}

Widget textBuilder(BuildContext context) {
  return Row(
    children: [
      Text(
        'Login or signup via mobile number',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    ],
  );
}

Widget _inputBuilder(final AuthVm vm) {
  return Column(
    children: [
      AppInput(
        controller: vm.phoneNumberController,
        hintText: 'Mobile Number',
      ),
      const SizedBox(
        height: 10.0,
      ),
    ],
  );
}

Widget _loginButtonBuilder(BuildContext context, final AuthVm vm) {
  return Row(
    children: [
      Expanded(
        child: AppButton(
          onPressed: () {
            vm.sendOtp(context);
          },
          text: 'Continue',
        ),
      ),
    ],
  );
}

Widget _skipLogin(final BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          AppRoutes.otpScreen,
        ),
        child: Text(
          "Skip Login",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    ],
  );
}

String? validateMobile(String value) {
  if (value.length != 10) {
    const Icon(Icons.abc_outlined);
  } else {
    return null;
  }
  return null;
}


    // Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (
    //                     context,
    //                   ) =>
    //                       AuthScreen(
    //                     verificationId: verificationId,
    //                   ),
    //                 )
    //                 );