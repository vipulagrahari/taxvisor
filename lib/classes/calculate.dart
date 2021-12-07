dynamic calculateTaxAsPerOldRules(int income, int deductions) {
  dynamic totalTax = 0;
  dynamic taxableIncome = income - deductions;

  while (taxableIncome > 250000) {
    if (taxableIncome > 1000000) {
      var tax = 0.30 * (taxableIncome - 1000000);
      taxableIncome = taxableIncome - (taxableIncome - 1000000);
      totalTax += tax;
    }
    if (taxableIncome > 500000) {
      var tax = 0.20 * (taxableIncome - 500000);
      taxableIncome = taxableIncome - (taxableIncome - 500000);
      totalTax += tax;
    }
    if (taxableIncome > 250000) {
      var tax = 0.05 * (taxableIncome - 250000);
      taxableIncome = taxableIncome - (taxableIncome - 250000);
      totalTax += tax;
    }
  }
  dynamic x = totalTax;
  return x.round();
}

dynamic calculateTaxAsPerNewRules(int income) {
  dynamic totalTax = 0;
  var taxableIncome = income;
  while (taxableIncome > 250000) {
    if (taxableIncome > 1500000) {
      var tax = 0.30 * (taxableIncome - 1500000);
      taxableIncome = taxableIncome - (taxableIncome - 1500000);
      totalTax += tax;
    }
    if (taxableIncome > 1250000) {
      var tax = 0.25 * (taxableIncome - 1250000);
      taxableIncome = taxableIncome - (taxableIncome - 1250000);
      totalTax += tax;
    }
    if (taxableIncome > 1000000) {
      var tax = 0.20 * (taxableIncome - 1000000);
      taxableIncome = taxableIncome - (taxableIncome - 1000000);
      totalTax += tax;
    }
    if (taxableIncome > 750000) {
      var tax = 0.15 * (taxableIncome - 750000);
      taxableIncome = taxableIncome - (taxableIncome - 750000);
      totalTax += tax;
    }
    if (taxableIncome > 500000) {
      var tax = 0.10 * (taxableIncome - 500000);
      taxableIncome = taxableIncome - (taxableIncome - 500000);
      totalTax += tax;
    }
    if (taxableIncome > 250000) {
      var tax = 0.05 * (taxableIncome - 250000);
      taxableIncome = taxableIncome - (taxableIncome - 250000);
      totalTax += tax;
    }
  }
  dynamic x = totalTax;
  return x.round();
}
