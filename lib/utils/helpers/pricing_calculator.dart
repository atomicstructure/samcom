class TpricingCalculator {
  // Calculate the total price including tax and shipping for a given location
  static double calculatePrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate the shipping cost based on the location
  static double getShippingCost(String location) {
    switch (location) {
      case 'USA':
        return 10.0;
      case 'Canada':
        return 20.0;
      case 'Europe':
        return 30.0;
      case 'Asia':
        return 40.0;
      case 'Africa':
        return 50.0;
      case 'Australia':
        return 60.0;
      default:
        return 0.0;
    }
  }

  // Calculate the tax amount for a given product price and location
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // Get the tax rate based on the location
  static double getTaxRateForLocation(String location) {
    switch (location) {
      case 'USA':
        return 0.07; // 7% tax
      case 'Canada':
        return 0.05; // 5% tax
      case 'Europe':
        return 0.2; // 20% tax
      case 'Asia':
        return 0.1; // 10% tax
      case 'Africa':
        return 0.15; // 15% tax
      case 'Australia':
        return 0.1; // 10% tax
      default:
        return 0.0; // No tax for other locations
    }
  }
}
