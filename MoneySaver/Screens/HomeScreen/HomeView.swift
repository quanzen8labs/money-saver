//
//  HomeView.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack() {
                headerView
                SpendingView(receipts: [
                    Receipt(id: "0",
                            amount: 1000,
                            note: "Uống cafe với Long",
                            date: .now,
                            type: .income,
                            category: .coffee)
                ])
            }
                .toolbar {
                    toolBarContent
                }
        }
    }
}

private extension HomeView {
    @ToolbarContentBuilder var toolBarContent: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            VStack(alignment: .leading) {
                Text(R.string.localizable.homeNavigationWelcomeBack())
                    .font(.callout)
                Text("Quân").font(.headline)
            }
        }
    }
    
    @ViewBuilder var headerView: some View {
        ZStack(alignment: .center, content: {
            Rectangle().frame(height: 80, alignment: .top).foregroundColor(Color.clear)
            VStack(alignment: .center) {
                Text("Spent this week").font(.callout).foregroundColor(Color.black.opacity(0.5))
                Text("895.000 VNĐ").font(Font.title2).fontWeight(.semibold)
            }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        })
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
