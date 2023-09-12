import 'package:contact/contact/presentation/contact_list_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const ContactListScreen();
      },
    ),
  ],
);
