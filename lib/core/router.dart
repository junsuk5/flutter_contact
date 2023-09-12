import 'package:contact/contact/domain/repository/contact_repository.dart';
import 'package:contact/contact/presentation/contact_list_screen.dart';
import 'package:contact/contact/presentation/getx_contact_list_controller.dart';
import 'package:contact/di/di_setup.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        Get.put(ContactListController(getIt<ContactRepository>()));
        return const ContactListScreen();
      },
    ),
  ],
);
