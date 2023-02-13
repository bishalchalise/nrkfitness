import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatelessWidget {
 
  final TextEditingController pin1;
  final TextEditingController pin2;
  final TextEditingController pin3;
  final TextEditingController pin4;
  final TextEditingController pin5;
  final TextEditingController pin6;
  final Function(String) onChanged;
  const OtpForm({
    super.key,
    required this.onChanged,
  
    required this.pin1,
    required this.pin2,
    required this.pin3,
    required this.pin4,
    required this.pin5,
    required this.pin6,
  });

 

  @override
  Widget build(BuildContext context) {
    return Form(
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              height: 58,
              width: MediaQuery.of(context).size.width * 0.166,
              child: TextFormField(
                controller: pin1,
                onSaved: (pin1) {},
                onChanged: onChanged,
                cursorHeight: 30.1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 58,
              width: MediaQuery.of(context).size.width * 0.166,
              child: TextFormField(
                controller: pin2,
                onSaved: (pin2) {},
                onChanged: onChanged,
                cursorHeight: 30.1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 58,
              width: MediaQuery.of(context).size.width * 0.166,
              child: TextFormField(
                controller: pin3,
                onSaved: (pin3) {},
                onChanged: onChanged,
                cursorHeight: 30.1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 58,
              width: MediaQuery.of(context).size.width * 0.166,
              child: TextFormField(
                controller: pin4,
                onSaved: (pin4) {},
                onChanged: onChanged,
                cursorHeight: 30.1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 58,
              width: MediaQuery.of(context).size.width * 0.166,
              child: TextFormField(
                controller: pin5,
                onSaved: (pin5) {},
                onChanged: onChanged,
                cursorHeight: 30.1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 58,
              width: MediaQuery.of(context).size.width * 0.166,
              child: TextFormField(
                controller: pin6,
                onSaved: (pin6) {},
                onChanged: onChanged,
                cursorHeight: 30.1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
