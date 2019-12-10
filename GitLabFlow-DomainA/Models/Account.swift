//
//  Account.swift
//  GitLabFlow-DomainA
//
//  Created by James Reeve on 11/12/19.
//  Copyright © 2019 James Reeve. All rights reserved.
//

import Foundation

public enum AccountType: String {
    case internalAccount = "InternalAccount"
    case bsbAccount = "BSBAccount"
    case bPay = "BPay"
    case ato = "ATO"
}

public struct Account: Codable, Hashable {
    public let name: String
    public let bsb: String
    public let accountNumber: String
    public let bankName: String?
    public let currentBalance: Decimal
    public let availableBalance: Decimal
    
    init(name: String, bsb: String, accountNumber: String, bankName: String, currentBalance: Decimal, availableBalance: Decimal) {
        self.name = name
        self.bsb = bsb
        self.accountNumber = accountNumber
        self.bankName = bankName
        self.currentBalance = currentBalance
        self.availableBalance = availableBalance
    }
}
