//
//  AppStore.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import Foundation
import ComposableArchitecture

struct AppReducer: ReducerProtocol {
    struct State: Equatable {
        var tabBarState = TabBarReducer.State.init()
    }

    enum Action {
        case tabBar(TabBarReducer.Action)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        return .none
    }
}

struct AnyEnvironment {}
struct AppEnvironment {
    let deviceClient: DeviceClient
    let loggerClient: LoggerClient
}

