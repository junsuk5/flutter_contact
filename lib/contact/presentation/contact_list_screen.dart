import 'package:contact/contact/presentation/components/add_contact_sheet.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:contact/contact/presentation/contact_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ContactListViewModel>();
    final state = viewModel.state;
    return ContactListUI(
      state: state,
      onEvent: (ContactListEvent event) {
        if (event is OnAddNewContactClick) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return AddContactSheet(
                onEvent: (ContactListEvent event) {
                  if (event is DismissContact) {
                    const snackBar = SnackBar(
                      content: Text('Yay! A SnackBar!'),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
  }
}

class ContactListUI extends StatelessWidget {
  final ContactListState state;
  final Function(ContactListEvent event) onEvent;

  const ContactListUI({
    super.key,
    required this.state,
    required this.onEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [Text('연락처 (0)')],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onEvent(const ContactListEvent.onAddNewContactClick()),
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
