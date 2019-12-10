//
//  Payee.swift
//  GitLabFlow-DomainA
//
//  Created by James Reeve on 11/12/19.
//  Copyright © 2019 James Reeve. All rights reserved.
//

import Foundation

public enum PayeeType: String {
    case bPay = "BPay"
    case ato = "ATO"
}

public struct Payee: Codable, Hashable {
    public let name: String
    public let dailyLimit: Decimal
    
    init(name: String, dailyLimit: Decimal) {
        self.name = name
        self.dailyLimit = dailyLimit
    }
}
