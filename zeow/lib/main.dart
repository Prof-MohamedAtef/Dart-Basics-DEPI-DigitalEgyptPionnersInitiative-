import 'package:zeow/domain/core/firebase/usecase/google_sign_in_use_case.dart';
import 'package:zeow/presentation/viewmodel/auth/auth_viewmodel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zeow/presentation/routes/routes.dart';
import 'package:provider/provider.dart';

import 'data/repositories/auth_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase

  // injecting dependencies
  final googleSignInUseCase = GoogleSignInUseCase();
  final authRepository = AuthRepository(googleSignInUseCase);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel(authRepository)),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true),
      initialRoute:
          AppRoutes.splash, // Set the home screen as the initial route
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
