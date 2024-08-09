class TValidator {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    return null;
  }

  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    }

    if (name.length < 3) {
      return 'Name must be at least 3 characters long';
    }

    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required';
    }

    if (!RegExp(r'^[0-9]{10}$').hasMatch(phoneNumber)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  static String? validateAddress(String? address) {
    if (address == null || address.isEmpty) {
      return 'Address is required';
    }

    if (address.length < 10) {
      return 'Address must be at least 10 characters long';
    }

    return null;
  }

  static String? validateCity(String? city) {
    if (city == null || city.isEmpty) {
      return 'City is required';
    }

    if (city.length < 3) {
      return 'City must be at least 3 characters long';
    }

    return null;
  }

  static String? validateZipCode(String? zipCode) {
    if (zipCode == null || zipCode.isEmpty) {
      return 'Zip code is required';
    }

    if (!RegExp(r'^[0-9]{6}$').hasMatch(zipCode)) {
      return 'Please enter a valid zip code';
    }

    return null;
  }

  static String? validateCountry(String? country) {
    if (country == null || country.isEmpty) {
      return 'Country is required';
    }

    if (country.length < 3) {
      return 'Country must be at least 3 characters long';
    }

    return null;
  }

  static String? validateCardNumber(String? cardNumber) {
    if (cardNumber == null || cardNumber.isEmpty) {
      return 'Card number is required';
    }

    if (!RegExp(r'^[0-9]{16}$').hasMatch(cardNumber)) {
      return 'Please enter a valid card number';
    }

    return null;
  }

  static String? validateCardHolderName(String? cardHolderName) {
    if (cardHolderName == null || cardHolderName.isEmpty) {
      return 'Card holder name is required';
    }

    if (cardHolderName.length < 3) {
      return 'Card holder name must be at least 3 characters long';
    }

    return null;
  }

  static String? validateExpiryDate(String? expiryDate) {
    if (expiryDate == null || expiryDate.isEmpty) {
      return 'Expiry date is required';
    }

    if (!RegExp(r'^[0-9]{2}/[0-9]{2}$').hasMatch(expiryDate)) {
      return 'Please enter a valid expiry date';
    }

    return null;
  }

  static String? validateCVV(String? cvv) {
    if (cvv == null || cvv.isEmpty) {
      return 'CVV is required';
    }

    if (!RegExp(r'^[0-9]{3}$').hasMatch(cvv)) {
      return 'Please enter a valid CVV';
    }

    return null;
  }

  static String? validateAmount(String? amount) {
    if (amount == null || amount.isEmpty) {
      return 'Amount is required';
    }

    if (!RegExp(r'^[0-9]+$').hasMatch(amount)) {
      return 'Please enter a valid amount';
    }

    return null;
  }
}
