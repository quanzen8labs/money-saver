//
//  SpendingView.swift
//  MoneySaver
//
//  Created by macbook on 23/11/2022.
//

import Foundation
import SwiftUI

struct SpendingView: View {
    let receipts: [Receipt]
    
    var body: some View {
        List {
            ForEach(receipts) { recept in
                ReceiptCell(receipt: recept)
            }
        }
    }
}

struct SpendingView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingView(receipts: [
            Receipt(id: "0", amount: 100, note: "This is note", date: Date.now, type: .expense, category: .coffee)
        ])
    }
}

struct ReceiptCell: View {
    let receipt: Receipt
    
    var body: some View {
        HStack {
            Text(receipt.category.emoji)
            Text(receipt.note ?? "").font(Font.body).padding(.leading, 8)
        }
    }
}
