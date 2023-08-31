import 'package:contact/contact/domain/model/contact.dart';
import 'package:flutter/material.dart';

class ContactPhoto extends StatelessWidget {
  final Contact contact;
  final double iconSize;

  const ContactPhoto({
    super.key,
    required this.contact,
    this.iconSize = 25.0,
  });

  @override
  Widget build(BuildContext context) {
    return switch (contact.photoBytes) {
      null => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(
            Icons.person,
            size: iconSize,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        ),
      [...] => ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.memory(
            contact.photoBytes!,
            height: iconSize,
            width: iconSize,
            fit: BoxFit.cover,
          ),
        ),
    };
  }
}
