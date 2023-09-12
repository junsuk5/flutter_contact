import 'package:contact/contact/presentation/contact_list_cubit.dart';
import 'package:contact/contact/presentation/contact_list_screen.dart';
import 'package:contact/di/di_setup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocProvider(
          create: (_) => getIt<ContactListCubit>(),
          child: const ContactListScreen(),
        );
      },
    ),
  ],
);
