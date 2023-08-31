import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_photo.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:flutter/material.dart';

class ContactDetailSheet extends StatelessWidget {
  final Contact selectedContact;
  final void Function(ContactListEvent) onEvent;

  const ContactDetailSheet({
    super.key,
    required this.selectedContact,
    required this.onEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 60),
              SizedBox(
                width: 150,
                height: 150,
                child: ContactPhoto(
                  contact: selectedContact,
                  iconSize: 50,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '${selectedContact.firstName} ${selectedContact.lastName}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 16),
              EditRow(
                onEditClick: () {
                  onEvent(EditContact(selectedContact));
                },
                onDeleteClick: () {
                  onEvent(DeleteContact(selectedContact));
                },
              ),
              const SizedBox(height: 16),
              ContactInfoSection(
                title: '전화번호',
                value: selectedContact.phoneNumber,
                iconData: Icons.phone,
              ),
              const SizedBox(height: 16),
              ContactInfoSection(
                title: '이메일',
                value: selectedContact.email,
                iconData: Icons.email,
              ),
            ],
          ),
          IconButton(
            onPressed: () => onEvent(DismissContact()),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class EditRow extends StatelessWidget {
  final void Function() onEditClick;
  final void Function() onDeleteClick;

  const EditRow({
    super.key,
    required this.onEditClick,
    required this.onDeleteClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            shape: const CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.errorContainer,
            shape: const CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
          ),
        ),
      ],
    );
  }
}

class ContactInfoSection extends StatelessWidget {
  final String title;
  final String value;
  final IconData iconData;

  const ContactInfoSection({
    super.key,
    required this.title,
    required this.value,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: null,
          icon: Icon(
            iconData,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 12,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
