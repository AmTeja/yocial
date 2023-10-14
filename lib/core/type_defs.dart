import 'package:fpdart/fpdart.dart';
import 'package:yocial/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureEitherVoid = Future<Either<Failure, void>>;
