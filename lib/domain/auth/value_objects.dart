import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../core/value_validators.dart';
import '../core/failures.dart';

class EmailAddress<T> extends Equatable {
  const EmailAddress._(this.value);
  @override
  final Either<ValueFailure<String>, T> value;
  @override
  List<Object> get props => [value];
  factory EmailAddress(String input) {
    return EmailAddress(validateEmailAddress(input) as String);
  }

  bool isValid() {
    return value.isRight;
  }
}

class Password<T> extends Equatable {
  const Password._(this.value);
  @override
  final Either<ValueFailure<String>, T> value;
  @override
  List<Object> get props => [value];
  factory Password(String input) {
    return Password(input);
  }
  bool isValid() {
    return value.isRight;
  }
}
