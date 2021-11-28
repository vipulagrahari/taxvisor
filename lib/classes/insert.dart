// ignore_for_file: non_constant_identifier_names

class User {
  // Assesement Year
  List _AssessmentYear = [0, 0];

  String _Name = "";

  // Male, Female, Senior Citzen or Super Senior Citizen
  String _Category = "";

  // who is the taxpayer, is it an individual or something else
  String _Taxpayer = "";

  //Residential status
  String _ResidentialStatus = "";

  // Income intiables
  int _NetSalaryIncome = 0;
  int _HouseRentAllowance = 0;
  int _IncomeFromBankInterest = 0;
  int _IncomeFromRent = 0;
  int _IncomeFromOtherSources = 0;
  int _CapitalGains = 0;

  // Deduction intiables values per annum
  int _ELSS = 0;
  int _PPF = 0;
  int _LifeInsurance = 0;
  int _MedicalInsurance = 0;
  int _NationalPensionScheme = 0;
  int _TotalDonations = 0;

  // Loans
  int _HomeLoan = 0; //Emi for current year

  // Getters and Setters

  set SetAssessmentYear(List a) {
    _AssessmentYear = a;
  }

  List get GetAssessmentYear => _AssessmentYear;

  set SetName(String a) {
    _Name = a;
  }

  String get GetName => _Name;

  set SetCategory(String a) {
    _Category = a;
  }

  String get GetCategory => _Category;

  set SetTaxPayer(String a) {
    _Taxpayer = a;
  }

  String get GetTaxPayer => _Taxpayer;

  set SetResidentialStatus(String a) {
    _ResidentialStatus = a;
  }

  String get GetResidentialStatus => _ResidentialStatus;

  //for Income intiables

  set SetNetSalaryIncome(int a) {
    _NetSalaryIncome = a;
  }

  dynamic get GetNetSalaryIncome => _NetSalaryIncome;

  set SetHouseRentAllowance(int a) {
    _HouseRentAllowance = a;
  }

  dynamic get GetHouseRentAllowance => _HouseRentAllowance;

  set SetIncomeFromBankInterest(int a) {
    _IncomeFromBankInterest = a;
  }

  dynamic get GetIncomeFromBankInterest => _IncomeFromBankInterest;

  set SetIncomeFromRent(int a) {
    _IncomeFromRent = a;
  }

  dynamic get GetIncomeFromRent => _IncomeFromRent;

  set SetIncomeFromOtherSources(int a) {
    _IncomeFromOtherSources = a;
  }

  dynamic get GetIncomeFromOtherSources => _IncomeFromOtherSources;

  set SetCapitalGains(int a) {
    _CapitalGains = a;
  }

  dynamic get GetCapitalGains => _CapitalGains;

  //for deduction intiables

  set SetELSS(int a) {
    _ELSS = a;
  }

  dynamic get GetELSS => _ELSS;

  set SetPPF(int a) {
    _PPF = a;
  }

  dynamic get GetPPF => _PPF;

  set SetLifeInsurance(int a) {
    _LifeInsurance = a;
  }

  dynamic get GetLifeInsurance => _LifeInsurance;

  set SetMedicalInsurance(int a) {
    _MedicalInsurance = a;
  }

  dynamic get GetMedicalInsurance => _MedicalInsurance;

  set SetNationalPensionScheme(int a) {
    _NationalPensionScheme = a;
  }

  dynamic get GetNationalPensionScheme => _NationalPensionScheme;

  set SetTotalDonations(int a) {
    _TotalDonations = a;
  }

  dynamic get GetTotalDonations => _TotalDonations;

  set SetHomeLoan(int a) {
    _HomeLoan = a;
  }

  dynamic get GetHomeLoan => _HomeLoan;

  dynamic CalculateIncome() {
    int result = _NetSalaryIncome +
        _HouseRentAllowance +
        _IncomeFromBankInterest +
        _IncomeFromOtherSources +
        _IncomeFromRent;
    return result;
  }

  dynamic CalculateDeduction() {
    dynamic result = _ELSS +
        _PPF +
        _LifeInsurance +
        _MedicalInsurance +
        _NationalPensionScheme +
        _TotalDonations;
    return result;
  }
}
///age>80
///60>age>80
///age<6
///
///