import 'package:top_up_app/src/src.dart';

abstract class ITopUpMockDataset {
  void mockGetTransactions();
  void mockGetOptions();
  void mockTopUpBeneficiary(TopUpDto dto);
}
