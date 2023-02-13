// import 'package:flutter/material.dart';

// class MobileNumberTextField extends StatefulWidget {
//   @override
//   _MobileNumberTextFieldState createState() => _MobileNumberTextFieldState();
// }

// class _MobileNumberTextFieldState extends State<MobileNumberTextField> {
//   bool _valid = false;
//   final _formKey = GlobalKey<FormState>();

//   void _validateAndSave() {
//     final form = _formKey.currentState;
//     if (form.validate()) {
//       form.save();
//       setState(() {
//         _valid = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             keyboardType: TextInputType.phone,
//             decoration: InputDecoration(
//               suffixIcon: _valid ? Icon(Icons.check, color: Colors.green) : null,
//             ),
//             // validator: (value) {
//             //   if (value.length != 10) {
//             //     return "Enter a valid 10-digit mobile number";
//             //   }
//             //   return null;
//             // },
//           ),
//           RaisedButton(
//             child: Text("Submit"),
//             onPressed: _validateAndSave,
//           ),
//         ],
//       ),
//     );
//   }
// }
