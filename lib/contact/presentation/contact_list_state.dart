import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_state.freezed.dart';
part 'contact_list_state.g.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState({
    String? firstNameError,
    String? lastNameError,
    String? emailError,
    String? phoneNumberError,
  }) = _ContactListState;

  factory ContactListState.fromJson(Map<String, Object?> json) => _$ContactListStateFromJson(json);
}