//
//  TabBarView.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import SwiftUI
import ComposableArchitecture
import SFSafeSymbols

struct TabBarView: View {
    private let store: Store<AppReducer.State, AppReducer.Action>
    @ObservedObject private var viewStore: ViewStore<AppReducer.State, AppReducer.Action>
    
    init(store: Store<AppReducer.State, AppReducer.Action>) {
        self.store = store
        viewStore = ViewStore(store)
    }
    
    var body: some View {
        TabView(
            selection: .init(
                get: { viewStore.tabBarState.tabBarItemType },
                set: { viewStore.send(.tabBar(.setTabBarItemType($0))) }
            )
        ) {
            ForEach(TabBarItemType.allCases) { type in
                Group {
                    switch type {
                    case .home:
                        HomeView()
                    case .calendar:
                        CalendarView()
                    case .setting:
                        SettingView()
                    }
                }.tabItem(type.label).tag(type)
            }
        }
    }
}

extension TabBarItemType {
    var title: String {
        switch self {
        case .home: return R.string.localizable.tabItemTitleHome()
        case .calendar: return R.string.localizable.tabItemTitleCalendar()
        case .setting: return R.string.localizable.tabItemTitleSetting()
        }
    }
    
    var symbol: SFSymbol {
        switch self {
        case .home:
            return .houseCircle
        case .calendar:
            return .calendarCircle
        case .setting:
            return .gearshapeCircle
        }
    }
    
    func label() -> Label<Text, Image> {
        Label(title, systemSymbol: symbol)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(
            store: .init(
                initialState: .init(),
                reducer: AppReducer()
            )
        )
    }
}
