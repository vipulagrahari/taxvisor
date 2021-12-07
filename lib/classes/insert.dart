// ignore_for_file: non_constant_identifier_names

class User {
  // Assesement Year
  User();
  List _AssessmentYear = [0, 0];

  String _Name = "";

  // Male, Female, Senior Citzen or Super Senior Citizen
  String _Category = "";

  // who is the taxpayer, is it an individual or something else
  String _Taxpayer = "";

  //Residential status
  String _ResidentialStatus = "";

  // Income variables
  int _NetSalaryIncome = 0;
  int _HouseRentAllowance = 0;
  int _IncomeFromBankInterest = 0;
  int _IncomeFromRent = 0;
  int _IncomeFromOtherSources = 0;
  int _CapitalGains = 0;

  // Deduction variables values per annum
  int _ELSS = 0;
  int _PPF = 0;
  int _LifeInsurance = 0;
  int _MedicalInsurance = 0;
  int _NationalPensionScheme = 0;
  int _TotalDonations = 0;

  // Loans
  var _HomeLoan = 0; //Emi for current year

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

  //for Income variables

  set SetNetSalaryIncome(var a) {
    _NetSalaryIncome = a;
  }

  dynamic get GetNetSalaryIncome => _NetSalaryIncome;

  set SetHouseRentAllowance(var a) {
    _HouseRentAllowance = a;
  }

  dynamic get GetHouseRentAllowance => _HouseRentAllowance;

  set SetIncomeFromBankInterest(var a) {
    _IncomeFromBankInterest = a;
  }

  dynamic get GetIncomeFromBankInterest => _IncomeFromBankInterest;

  set SetIncomeFromRent(var a) {
    _IncomeFromRent = a;
  }

  dynamic get GetIncomeFromRent => _IncomeFromRent;

  set SetIncomeFromOtherSources(var a) {
    _IncomeFromOtherSources = a;
  }

  dynamic get GetIncomeFromOtherSources => _IncomeFromOtherSources;

  set SetCapitalGains(var a) {
    _CapitalGains = a;
  }

  dynamic get GetCapitalGains => _CapitalGains;

  //for deduction variables

  set SetELSS(var a) {
    _ELSS = a;
  }

  dynamic get GetELSS => _ELSS;

  set SetPPF(var a) {
    _PPF = a;
  }

  dynamic get GetPPF => _PPF;

  set SetLifeInsurance(var a) {
    _LifeInsurance = a;
  }

  dynamic get GetLifeInsurance => _LifeInsurance;

  set SetMedicalInsurance(var a) {
    _MedicalInsurance = a;
  }

  dynamic get GetMedicalInsurance => _MedicalInsurance;

  set SetNationalPensionScheme(var a) {
    _NationalPensionScheme = a;
  }

  dynamic get GetNationalPensionScheme => _NationalPensionScheme;

  set SetTotalDonations(var a) {
    _TotalDonations = a;
  }

  dynamic get GetTotalDonations => _TotalDonations;

  set SetHomeLoan(var a) {
    _HomeLoan = a;
  }

  dynamic get GetHomeLoan => _HomeLoan;

  dynamic getPossibleDeductions() {
    int res = 0;
    if (_ELSS == 0) {
      res++;
    }
    if (_PPF == 0) {
      res++;
    }
    if (_LifeInsurance == 0) {
      res++;
    }
    if (_MedicalInsurance == 0) {
      res++;
    }
    if (_NationalPensionScheme == 0) {
      res++;
    }
    if (_TotalDonations == 0) {
      res++;
    }
    return res;
  }

  dynamic CalculateIncome() {
    var result = _NetSalaryIncome +
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
