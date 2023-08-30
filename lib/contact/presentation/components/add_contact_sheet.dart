import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_photo.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';

class AddContactSheet extends StatefulWidget {
  final void Function(ContactListEvent event) onEvent;
  final ContactListState state;
  final Contact? newContact;

  const AddContactSheet({
    super.key,
    required this.onEvent,
    this.newContact,
    required this.state,
  });

  @override
  State<AddContactSheet> createState() => _AddContactSheetState();
}

class _AddContactSheetState extends State<AddContactSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
      child: Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    switch (widget.newContact?.photoBytes) {
                      null => InkWell(
                          onTap: () => widget.onEvent(OnAddPhotoClicked()),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                width: 1,
                              ),
                            ),
                            child: Icon(
                              Icons.add_rounded,
                              size: 40,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                      [...] => InkWell(
                          onTap: () => widget.onEvent(OnAddPhotoClicked()),
                          child: ContactPhoto(
                            contact: widget.newContact!,
                            iconSize: 150,
                          ),
                        ),
                    },
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: widget.newContact?.firstName ?? '',
                      placeHolder: '성',
                      error: widget.state.firstNameError,
                      onChanged: (String value) {
                        widget.onEvent(OnFirstNameChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: widget.newContact?.lastName ?? '',
                      placeHolder: '이름',
                      error: widget.state.lastNameError,
                      onChanged: (String value) {
                        widget.onEvent(OnLastNameChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: widget.newContact?.email ?? '',
                      placeHolder: '이메일',
                      error: widget.state.emailError,
                      onChanged: (String value) {
                        widget.onEvent(OnEmailChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: widget.newContact?.phoneNumber ?? '',
                      placeHolder: '전화번호',
                      error: widget.state.phoneNumberError,
                      onChanged: (String value) {
                        widget.onEvent(OnPhoneNumberChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          widget.onEvent(SaveContact());
                        }
                      },
                      child: const Text('저장'),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => widget.onEvent(DismissContact()),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactTextField extends StatelessWidget {
  final String value;
  final String placeHolder;
  final String? error;
  final void Function(String value) onChanged;

  const ContactTextField({
    super.key,
    required this.value,
    required this.placeHolder,
    this.error,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            hintText: placeHolder,
          ),
          onChanged: onChanged,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return error;
            }
            return null;
          },
        ),
      ],
    );
  }
}
