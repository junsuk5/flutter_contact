import 'package:contact/contact/domain/data_source/image_picker.dart';
import 'package:contact/contact/presentation/getx_contact_list_controller.dart';
import 'package:contact/di/di_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/add_contact_sheet.dart';
import 'components/contact_detail_sheet.dart';
import 'components/contact_list_ui.dart';
import 'contact_list_event.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.find<ContactListController>();
    return Obx(
      () => ContactListUI(
        state: viewModel.state.value,
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
                            state: viewModel.state.value,
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
                  state: viewModel.state.value,
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
      ),
    );
  }
}
