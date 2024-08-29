import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

abstract class IUserMockDataset {
  void mockGetUserInfo();
  Either<Error, double> debitUserBalance(double amount);
  double creditUserBalance(double amount);
  double get userBalance;
  bool get isVerified;
}
