import 'package:contact/contact/domain/data_source/image_picker.dart';
import 'package:contact/contact/presentation/components/add_contact_sheet.dart';
import 'package:contact/contact/presentation/components/contact_detail_sheet.dart';
import 'package:contact/contact/presentation/components/contact_list_item.dart';
import 'package:contact/contact/presentation/components/recently_added_contacts.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:contact/contact/presentation/contact_list_view_model.dart';
import 'package:contact/di/di_setup.dart';
import 'package:flutter/material.dart';
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
        if (event is SelectContact) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return ContactDetailSheet(
                selectedContact: event.contact,
                onEvent: (event) {
                  if (event is DismissContact) {
                    Navigator.pop(context);
                  } else if (event is EditContact) {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return AddContactSheet(
                          newContact: event.contact,
                          state: state,
                          imagePicker: getIt<ImagePicker>(),
                          onEvent: (ContactListEvent event) async {
                            if (event is DismissContact) {
                              Navigator.pop(context);
                            } else if (event is OnSaveContact) {
                              Navigator.pop(context);
                            }
                            viewModel.onEvent(event);
                          },
                        );
                      },
                    );
                  } else if (event is DeleteContact) {
                    Navigator.pop(context);
                  }
                  viewModel.onEvent(event);
                },
              );
            },
          );
        }
        if (event is OnAddNewContactClick) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return AddContactSheet(
                state: state,
                imagePicker: getIt<ImagePicker>(),
                onEvent: (ContactListEvent event) async {
                  if (event is DismissContact) {
                    Navigator.pop(context);
                  } else if (event is OnSaveContact) {
                    Navigator.pop(context);
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
