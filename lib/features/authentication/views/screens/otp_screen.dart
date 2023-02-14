import 'package:flutter/material.dart';
import 'package:nrkfitness/features/authentication/viewmodels/auth_vm.dart';
import 'package:nrkfitness/features/shared/views/widgets/app_button.dart';
import 'package:nrkfitness/features/authentication/views/widgets/otp_input.dart';
import 'package:nrkfitness/features/shared/views/widgets/text_builder.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatelessWidget {
  final String? verificationId;

  const OtpScreen({
    super.key,
    required this.verificationId,
  });



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return AuthVm();
      },
      builder: (context, child) {
        final authVm = Provider.of<AuthVm>(context);
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            title: Text(
              'Back',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          body: Container(
            color: Theme.of(context).colorScheme.background,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  height: 396,
                  width: 356,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _headerBuilder(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      _textBuilder(context),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _inputBuilder(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _secondTextBuilder(context),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _otpFormBuilder(context, authVm),
                    ],
                  ),
                ),
                Container(
                  height: 135,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: _loginButtonBuilder(context, verificationId!, authVm),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _skipLogin(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
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

Widget _textBuilder(BuildContext context) {
  return Row(
    children: [
      TextBuilder(
        text: 'Continue to login',
        color: Theme.of(context).colorScheme.secondary,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget _inputBuilder() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  children: const [
                    Text('Naresh Bhattrai'),
                    Text('+977 9283423524'),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.cancel_outlined,
              ))
        ],
      ),
    ],
  );
}

Widget _loginButtonBuilder(
    BuildContext context, String verificatinId, final AuthVm vm) {
  return Row(
    children: [
      Expanded(
        child: AppButton(
          onPressed: () async {

            print("The verification ID is $verificatinId");
            vm.signInWithVerificationCode(vm.otpController.text);
          },
          text: 'Login',
        ),
      ),
    ],
  );
}

Widget _skipLogin(final BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Skip Login",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ],
  );
}

Widget _secondTextBuilder(BuildContext context) {
  return Row(
    children: [
      TextBuilder(
        text: 'Enter OTP sent to above mobile number.',
        color: Theme.of(context).colorScheme.tertiary,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget _otpFormBuilder(final BuildContext context, final AuthVm vm) {
  return OtpForm(
    pin1: vm.pin1,
    pin2: vm.pin2,
    pin3: vm.pin3,
    pin4: vm.pin4,
    pin5: vm.pin5,
    pin6: vm.pin6,
    onChanged: (value) {
      if (value.length == 1) {
        FocusScope.of(context).nextFocus();
      }
    },
  );
}
