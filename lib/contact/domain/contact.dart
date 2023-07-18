import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    int? id,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    Uint8List? photoBytes,
  }) = _Contact;
}