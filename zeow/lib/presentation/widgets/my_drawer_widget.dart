import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeow/presentation/routes/routes.dart';
import 'package:zeow/presentation/viewmodel/auth/auth_viewmodel.dart';

import '../state/auth_state.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return drawerWidget(context);
  }
}

Widget drawerWidget(BuildContext context) {
  final authViewModel = Provider.of<AuthViewModel>(context, listen: false);
  authViewModel.fetchCurrentUser();
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  authViewModel.user?.photoUrl ?? 'assets/images/my_pic.jpg',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                authViewModel.user?.displayName ?? 'Guest',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.trip_origin),
          title: const Text('Your Trips'),
          onTap: () {
            // Navigate to the Home page
            Navigator.pushNamed(context, AppRoutes.tripsScreen);
          },
        ),
        ListTile(
          leading: const Icon(Icons.wallet),
          title: const Text('Wallet'),
          onTap: () {
            // Navigate to the Home page
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.payment),
          title: const Text('Payment'),
          onTap: () {
            // Navigate to the Home page
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.bus_alert),
          title: const Text('Private Bus'),
          onTap: () {
            // Navigate to the Home page
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            // Navigate to the Home page
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text('Help'),
          onTap: () {
            // Navigate to the settings page
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.privacy_tip),
          title: const Text('Privacy Center'),
          onTap: () {
            // Navigate to the Home page
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Log Out'),
          onTap: () async {
            // Navigate to the Home page
            Navigator.pop(context); // Close the drawer
            await authViewModel.signOut();
            // After sign-out, navigate to the login screen or initial route
            Navigator.pushReplacementNamed(context, AppRoutes.splash);
          },
        ),
      ],
    ),
  );
}
