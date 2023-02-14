// import '../models/user_model.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';


// class UserService {
//   final _usersCollection = FirebaseFirestore.instance.collection('users');
  
//   Future<void> createUser(User user) {
//     return _usersCollection.doc(user.id).set({
//       'name': user.firstname,
//       'phoneNumber': user.phoneNumber,
//     });
//   }
  
//   Future<User?> getUser(String userId) async {
//     final snapshot = await _usersCollection.doc(userId).get();
//     if (snapshot.exists) {
//       final data = snapshot.data() as Map<String, dynamic>;
//       return User(
//         id: userId,
//         name: data['name'],
//         phoneNumber: data['phoneNumber'],
//       );
//     } else {
//       return null;
//     }
//   }
  
//   // Implement other methods as needed, e.g. updateUser(), deleteUser().
// }
