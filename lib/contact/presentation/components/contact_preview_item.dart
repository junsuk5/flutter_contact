import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_photo.dart';
import 'package:flutter/material.dart';

class ContactPreviewItem extends StatelessWidget {
  final Contact contact;
  final void Function() onClick;

  const ContactPreviewItem({
    super.key,
    required this.contact,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => onClick(),
        child: Column(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: ContactPhoto(contact: contact),
            ),
            const SizedBox(height: 8),
            Text(contact.firstName),
          ],
        ),
      ),
    );
  }
}
