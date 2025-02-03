# DataValidator

DataValidator is a lightweight Swift framework for validating common user input fields such as email, password, phone number, and more.

## Features

- 🚀 Easy-to-use validation methods
- 🛡️ Built-in security checks against unsafe characters
- 🎯 Supports various input types: email, password, phone number, SMS code, etc.

## Installation

### Swift Package Manager (SPM)
Add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/terwb/DataValidator.git", from: "1.0.0")
```

### Manual Installation
Simply copy `DataValidate.swift` into your project.

## Usage

### Importing the Framework

```swift
import DataValidator
```

### Validating an Email

```swift
let email = "test@example.com"
if DataValidate().validateEmail(email) {
    print("✅ Email is valid")
} else {
    print("❌ Invalid email")
}
```

### Validating a Password

```swift
let password = "StrongP@ss123"
if DataValidate().validatePassword(password) {
    print("✅ Password is valid")
} else {
    print("❌ Invalid password")
}
```

### General Validation Method

```swift
let input = "123456"
if DataValidate().validate(input, pattern: .smsCode) {
    print("✅ Valid input")
} else {
    print("❌ Invalid input")
}
```

## Validation Patterns

The following validation patterns are available:

- `.email` – Validates email format.
- `.name` – Validates names (only letters and spaces).
- `.phoneNumber` – Validates US phone numbers (10 digits, excluding 1 as the first digit).
- `.smsCode` – Validates 4-digit SMS codes.
- `.password` – Validates passwords (minimum 8 characters, at least 1 letter and 1 number).
- `.twoFactorAuth` – Validates 6-character alphanumeric 2FA codes.

## License

DataValidator is available under the MIT license. See the LICENSE file for more info.

## Contributions

Feel free to open issues or pull requests to improve DataValidator. 🚀

