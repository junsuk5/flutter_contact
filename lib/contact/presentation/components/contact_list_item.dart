import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_photo.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final Contact contact;

  const ContactListItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: ContactPhoto(contact: contact),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            '${contact.firstName} ${contact.lastName}',
          ),
        ),
      ],
    );
  }
}
