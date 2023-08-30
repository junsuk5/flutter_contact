import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_preview_item.dart';
import 'package:flutter/material.dart';

class RecentlyAddedContacts extends StatelessWidget {
  final List<Contact> contacts;
  final void Function(Contact contact) onContactClick;

  const RecentlyAddedContacts({
    super.key,
    required this.contacts,
    required this.onContactClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (contacts.isNotEmpty) ...[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '최근 추가됨',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
        ],
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: contacts
                    .map((contact) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ContactPreviewItem(
                            contact: contact,
                            onClick: () {
                              onContactClick(contact);
                            },
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
