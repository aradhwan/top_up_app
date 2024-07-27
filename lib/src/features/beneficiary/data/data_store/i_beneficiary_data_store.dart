import 'package:http/http.dart';
import 'package:top_up_app/src/src.dart';

abstract class IBeneficiaryDataStore {
  Future<Response> fetchBeneficiaries();
  Future<Response> addBeneficiary(BeneficiaryDto beneficiaryDto);
}
