import 'package:either_dart/either.dart';
import 'package:flutternotetaker/domain/core/failures.dart';

Either<ValueFailure, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input as String)) {
    return Right(input as String);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure, String> validatePassword(String input) {
  if (input.length >= 8) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidPassword(failedValue: input));
  }
}
