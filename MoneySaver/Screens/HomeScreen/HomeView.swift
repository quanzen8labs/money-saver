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
            headerView
                .navigationBarTitleDisplayMode(.large)
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
                Text("Zhafira").font(.headline)
            }
        }
    }
    
    @ViewBuilder var headerView: some View {
        ZStack {
            Rectangle().foregroundColor(Color.green).frame(height: 200, alignment: .top)
            VStack(alignment: .leading) {
                Text("Balance")
                Text("IDR 895.000")
            }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        }
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
