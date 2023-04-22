import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../core/value_validators.dart';
import '../core/failures.dart';

class EmailAddress extends Equatable {
  const EmailAddress._(this.value);
  final Either<ValueFailure<String>, String> value;
  @override
  List<Object> get props => [value];

  factory EmailAddress(String value) {
    return EmailAddress(validateEmailAddress(value) as String);
  }

  bool isValid() {
    return value.isRight();
  }
}

class Password extends Equatable {
  const Password._(this.value);
  final Either<ValueFailure<String>, String> value;
  @override
  List<Object> get props => [value];
  factory Password(String value) {
    return Password(validatePassword(value) as String);
  }
  bool isValid() {
    return value.isRight();
  }
}
