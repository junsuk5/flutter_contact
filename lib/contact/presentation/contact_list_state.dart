import 'package:contact/contact/domain/model/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_state.freezed.dart';
part 'contact_list_state.g.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState({
    @Default([]) List<Contact> contacts,
    @Default([]) List<Contact> recentlyAddedContacts,
    Contact? selectedContact,
    @Default(false) bool isAddContactSheetOpen,
    @Default(false) bool isSelectedContactSheetOpen,
    String? firstNameError,
    String? lastNameError,
    String? emailError,
    String? phoneNumberError,
  }) = _ContactListState;

  factory ContactListState.fromJson(Map<String, Object?> json) => _$ContactListStateFromJson(json);
}