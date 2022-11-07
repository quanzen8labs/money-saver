//
//  Receipt.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import Foundation

struct Receipt {
    let id: String
    let amount: Double
    let note: String?
    let date: Date
    let type: ReceiptType
}

enum ReceiptType {
    case expense
    case income
}
