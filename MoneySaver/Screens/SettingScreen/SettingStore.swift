//
//  SettingStore.swift
//  MoneySaver
//
//  Created by macbook on 08/11/2022.
//

import SwiftUI
import ComposableArchitecture

struct SettingReducer: ReducerProtocol {
    struct State: Equatable {
        @BindableState var setting = Setting()
    }
    
    enum Action {
        case binding(BindingAction<State>)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        return .none
    }
}
