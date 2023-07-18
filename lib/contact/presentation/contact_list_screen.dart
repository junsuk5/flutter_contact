import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';

class ContactListScreen extends StatelessWidget {
  final void Function(ContactListEvent event) onEvent;
  final ContactListState state;

  const ContactListScreen({
    super.key,
    required this.onEvent,
    required this.state,
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
