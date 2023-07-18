import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:flutter/material.dart';

class AddContactSheet extends StatelessWidget {
  final void Function(ContactListEvent event) onEvent;

  const AddContactSheet({
    super.key,
    required this.onEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('test'),
          ElevatedButton(
            onPressed: () => onEvent(const ContactListEvent.dismissContact()),
            child: const Text('종료'),
          ),
        ],
      ),
    );
  }
}
