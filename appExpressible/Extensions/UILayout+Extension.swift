//
//  UILayout+Extension.swift
//  appExpressible
//
//  Created by Denis Couras on 28/07/22.
//

import Foundation
import UIKit

extension UILayoutPriority: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(rawValue: Float(value))
    }
}

@propertyWrapper struct Capitalized {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.capitalized
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

@propertyWrapper struct Upper {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
