//
//  TabBarStore.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import Foundation
import ComposableArchitecture

// MARK: TabType
enum TabBarItemType: Int, CaseIterable, Identifiable {
    var id: Int { rawValue }

    case home
    case calendar
    case setting
}

struct TabBarReducer: ReducerProtocol {
    struct State: Equatable {
        var tabBarItemType: TabBarItemType = .home
    }

    enum Action {
        case setTabBarItemType(TabBarItemType)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .setTabBarItemType(let type):
            state.tabBarItemType = type
            return .none
        }
    }
}
