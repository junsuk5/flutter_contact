import 'package:contact/contact/domain/data_source/image_picker.dart';
import 'package:contact/contact/domain/model/contact.dart';
import 'package:contact/contact/presentation/components/contact_photo.dart';
import 'package:contact/contact/presentation/contact_list_event.dart';
import 'package:contact/contact/presentation/contact_list_state.dart';
import 'package:flutter/material.dart';

class AddContactSheet extends StatefulWidget {
  final void Function(ContactListEvent event) onEvent;
  final ContactListState state;
  final Contact? newContact;
  final ImagePicker? imagePicker;

  const AddContactSheet({
    super.key,
    required this.onEvent,
    this.newContact,
    required this.state,
    this.imagePicker,
  });

  @override
  State<AddContactSheet> createState() => _AddContactSheetState();
}

class _AddContactSheetState extends State<AddContactSheet> {
  final _formKey = GlobalKey<FormState>();

  Contact? _newContact;

  @override
  void initState() {
    super.initState();

    _newContact = widget.newContact ??
        const Contact(firstName: '', lastName: '', email: '', phoneNumber: '');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: _formKey,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    switch (_newContact?.photoBytes) {
                      null => InkWell(
                          onTap: () async {
                            widget.onEvent(OnAddPhotoClicked());

                            _newContact = _newContact?.copyWith(
                              photoBytes:
                                  await widget.imagePicker?.pickImage(),
                            );

                            if (_newContact?.photoBytes != null) {
                              widget.onEvent(
                                  OnPhotoPicked(_newContact!.photoBytes!));
                            }

                            setState(() {});
                          },
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
                          onTap: () async {
                            widget.onEvent(OnAddPhotoClicked());

                            _newContact = _newContact?.copyWith(
                              photoBytes:
                                  await widget.imagePicker?.pickImage(),
                            );

                            if (_newContact?.photoBytes != null) {
                              widget.onEvent(
                                  OnPhotoPicked(_newContact!.photoBytes!));
                            }

                            setState(() {});
                          },
                          child: ContactPhoto(
                            contact: _newContact!,
                            iconSize: 150,
                          ),
                        ),
                    },
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: _newContact?.firstName ?? '',
                      placeHolder: '이름',
                      error: widget.state.firstNameError,
                      onChanged: (String value) {
                        _newContact = _newContact?.copyWith(
                          firstName: value,
                        );
                        widget.onEvent(OnFirstNameChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: _newContact?.lastName ?? '',
                      placeHolder: '성',
                      error: widget.state.lastNameError,
                      onChanged: (String value) {
                        _newContact = _newContact?.copyWith(
                          lastName: value,
                        );
                        widget.onEvent(OnLastNameChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: _newContact?.email ?? '',
                      placeHolder: '이메일',
                      error: widget.state.emailError,
                      onChanged: (String value) {
                        _newContact = _newContact?.copyWith(
                          email: value,
                        );
                        widget.onEvent(OnEmailChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ContactTextField(
                      value: _newContact?.phoneNumber ?? '',
                      placeHolder: '전화번호',
                      error: widget.state.phoneNumberError,
                      onChanged: (String value) {
                        _newContact = _newContact?.copyWith(
                          phoneNumber: value,
                        );
                        widget.onEvent(OnPhoneNumberChanged(value));
                      },
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            _newContact != null) {
                          widget.onEvent(OnSaveContact(_newContact!));
                        }
                      },
                      child: const Text('저장'),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () => widget.onEvent(DismissContact()),
              icon: const Icon(Icons.close),
            ),
          ],
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
          initialValue: value,
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
