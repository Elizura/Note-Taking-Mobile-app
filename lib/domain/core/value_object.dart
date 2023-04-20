import 'package:either_dart/either.dart';
import 'package:flutternotetaker/domain/core/failures.dart';

// @immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure, T> get value;

  bool isValid() {
    return value.isRight;
  }
}
