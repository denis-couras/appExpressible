//
//  Date+Extension.swift
//  appExpressible
//
//  Created by Denis Couras on 28/07/22.
//

import Foundation

extension Date: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        self = formatter.date(from: value)!
    }
}
