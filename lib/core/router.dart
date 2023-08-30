import 'package:contact/contact/presentation/contact_list_screen.dart';
import 'package:contact/contact/presentation/contact_list_view_model.dart';
import 'package:contact/di/di_setup.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => getIt<ContactListViewModel>(),
          child: const ContactListScreen(),
        );
      },
    ),
  ],
);
