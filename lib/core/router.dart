import 'package:contact/contact/presentation/components/add_contact_sheet.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_screen.dart';
import 'package:contact/contact/presentation/contact_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return _buildRoot();
      },
    ),
  ],
);

ChangeNotifierProvider<ContactListViewModel> _buildRoot() {
  return ChangeNotifierProvider(
        create: (_) => ContactListViewModel(),
        child: Builder(builder: (context) {
          final viewModel = context.watch<ContactListViewModel>();
          return ContactListScreen(
            onEvent: (ContactListEvent event) {
              if (event is OnAddNewContactClick) {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return AddContactSheet(
                      onEvent: (ContactListEvent event) {
                        if (event is DismissContact) {
                          context.pop();
                        }
                        viewModel.onEvent(event);
                      },
                    );
                  },
                );
              }
              viewModel.onEvent(event);
            },
          );
        }),
      );
}
