import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';

import 'contact_list_item.dart';
import 'recently_added_contacts.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              RecentlyAddedContacts(
                contacts: state.contacts,
                onContactClick: (contact) {
                  onEvent(SelectContact(contact));
                },
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '연락처 (${state.contacts.length})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...state.contacts
                  .map((contact) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            onEvent(SelectContact(contact));
                          },
                          child: ContactListItem(
                            contact: contact,
                          ),
                        ),
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onEvent(OnAddNewContactClick()),
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
