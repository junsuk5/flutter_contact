// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactListState _$$_ContactListStateFromJson(Map<String, dynamic> json) =>
    _$_ContactListState(
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => Contact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recentlyAddedContacts: (json['recentlyAddedContacts'] as List<dynamic>?)
              ?.map((e) => Contact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedContact: json['selectedContact'] == null
          ? null
          : Contact.fromJson(json['selectedContact'] as Map<String, dynamic>),
      firstNameError: json['firstNameError'] as String?,
      lastNameError: json['lastNameError'] as String?,
      emailError: json['emailError'] as String?,
      phoneNumberError: json['phoneNumberError'] as String?,
    );

Map<String, dynamic> _$$_ContactListStateToJson(_$_ContactListState instance) =>
    <String, dynamic>{
      'contacts': instance.contacts,
      'recentlyAddedContacts': instance.recentlyAddedContacts,
      'selectedContact': instance.selectedContact,
      'firstNameError': instance.firstNameError,
      'lastNameError': instance.lastNameError,
      'emailError': instance.emailError,
      'phoneNumberError': instance.phoneNumberError,
    };
