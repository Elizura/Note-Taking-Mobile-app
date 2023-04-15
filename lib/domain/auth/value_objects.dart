import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../core/value_validators.dart';
import '../core/failures.dart';

class EmailAddress extends Equatable {
  const EmailAddress._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
  @override
  List<Object> get props => [value];
  factory EmailAddress(String input) {
    return EmailAddress(validateEmailAddress(input) as String);
  }
}

class Password extends Equatable {
  const Password._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
  @override
  List<Object> get props => [value];
  factory Password(String input) {
    return Password(input);
  }
}
