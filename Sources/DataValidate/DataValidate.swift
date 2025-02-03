// The Swift Programming Language
// https://docs.swift.org/swift-book
// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
public enum ValidationPattern: String {
    case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    case name = "^[A-Za-z\\s]{2,}$"
    case phoneNumber = "^[2-9]\\d{9}$"
    case smsCode = "^[0-9]{4}$"
    case password = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
    case twoFactorAuth = "^[A-Za-z0-9]{6}$"
    case unsafeChars = ".*[\"'<>;{}].*"
}

public struct DataValidate {
    public init() {}
    public func validateEmail(_ email: String) -> Bool {
        return validate(input: email, pattern: .email)
    }
    public func validatePassword(_ password: String) -> Bool {
        return validate(input: password, pattern: .password)
    }
    public func validate(input: String, pattern: ValidationPattern) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern.rawValue)
        return predicate.evaluate(with: input) && !containsUnsafeCharacters(input)
    }
    private func containsUnsafeCharacters(_ input: String) -> Bool {
        let unsafePredicate = NSPredicate(format: "SELF MATCHES %@", ValidationPattern.unsafeChars.rawValue)
        return unsafePredicate.evaluate(with: input)
    }
}
