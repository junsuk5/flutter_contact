import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_event.freezed.dart';

@freezed
sealed class ContactListEvent with _$ContactListEvent {
  const factory ContactListEvent.onAddNewContactClick() = OnAddNewContactClick;
  const factory ContactListEvent.dismissContact() = DismissContact;
}

