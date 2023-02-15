import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nrkfitness/features/authentication/viewmodels/auth_vm.dart';
import 'package:provider/provider.dart';

class AppInput extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;

  const AppInput({
    super.key,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final validMobileNumber = Provider.of<AuthVm>(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      child: TextFormField(
        onChanged: (val) {},
        keyboardType: TextInputType.phone,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vertical_align_top),
          suffixIcon: validMobileNumber.phoneNumberController.text.length == 14
              ? const Icon(Icons.check_circle, color: Color(0xff6AC868))
              : null,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1.0,
            ),
          ),
        ),
        controller: controller,
        inputFormatters: [
          LengthLimitingTextInputFormatter(14),
          // FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
