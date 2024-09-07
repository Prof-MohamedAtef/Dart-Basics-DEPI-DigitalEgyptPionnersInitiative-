// import 'package:flutter/cupertino.dart';
//
// void main(){
//
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }

import 'package:fluterprojects/app/domain/entities/trip_entity.dart';
import 'package:fluterprojects/app/presentation/routes/routes.dart';
import 'package:fluterprojects/app/presentation/viewmodels/map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/repositories/trip_repository_impl.dart';
import '../domain/repositories/trip_repository.dart';
import '../domain/usecases/get_trip_details_usecase.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // Provide the TripRepository
      // Provide the TripApi
      Provider<TripEntity>(
        create: (_) => TripEntity(
          fromLat: 30.06560,
          fromLong: 31.54646,
          toLat: 30.06560,
          toLong: 31.54646,
          info: "Driver is far from the passenger around 22 mins",
        ), // Initialize your data source
      ),
      // Provide the TripRepository implementation
      Provider<TripRepository>(
        create: (context) => TripRepositoryImpl(),
      ),
      // Provide the GetTripDetailsUseCase
      Provider<GetTripDetailsUseCase>(
        create: (context) => GetTripDetailsUseCase(
          context.read<TripRepository>(), // Pass the TripRepository to the use case
        ),
      ),
      ChangeNotifierProvider<MapViewModel>(
        create: (context) => MapViewModel(context.read<GetTripDetailsUseCase>()),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.home, // Set the home screen as the initial route
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SafeArea(
//           child: Text(
//         "Hello",
//         style: TextStyle(
//             fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
//       )),
//     );
//   }
// }

/*
horizontal list
 */

class HorizontalListItems extends StatelessWidget {
  const HorizontalListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Name"),
        Text("Date of Birth"),
        Text("Age"),
        Text(
          "Hello",
          style: TextStyle(
              fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
