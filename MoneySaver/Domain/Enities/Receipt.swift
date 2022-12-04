//
//  Receipt.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import Foundation

struct Receipt: Identifiable {
    let id: String
    let amount: Double
    let note: String?
    let date: Date
    let type: ReceiptType
    let category: Category
}

enum ReceiptType {
    case expense
    case income
}
