// ignore_for_file: avoid_print

import 'package:taxvisor/classes/calculate.dart';
import 'package:taxvisor/classes/insert.dart';

void main() {
  User user1 = User();

  user1.SetName = "Vipul";
  user1.SetCategory = "Male";
  user1.SetTaxPayer = "Individual";
  user1.SetResidentialStatus = "Resident";
  user1.SetAssessmentYear = [2021, 2022];

  user1.SetNetSalaryIncome = 2000000;
  user1.SetHouseRentAllowance = 20000;
  user1.SetIncomeFromBankInterest = 1000;
  user1.SetIncomeFromRent = 10000;
  user1.SetIncomeFromOtherSources = 10210;
  user1.SetCapitalGains = 29290;

  user1.SetELSS = 19219;
  user1.SetPPF = 22827;
  user1.SetLifeInsurance = 12092;
  user1.SetMedicalInsurance = 21282;
  user1.SetNationalPensionScheme = 11111;
  user1.SetTotalDonations = 12391;

  int income = user1.CalculateIncome();
  int deductions = user1.CalculateDeduction();

  dynamic newsch = calculateTaxAsPerNewRules(income);
  dynamic oldsch = calculateTaxAsPerOldRules(income, deductions);

  print("New scheme: $newsch");
  print("Old Scheme: $oldsch");
}
