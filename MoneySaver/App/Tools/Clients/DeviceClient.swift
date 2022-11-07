//
//  DeviceClient.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import Foundation

struct DeviceClient {
    let isPad: () -> Bool
    let absWindowW: () -> Double
    let absWindowH: () -> Double
}

extension DeviceClient {
    static let live: Self = .init(
        isPad: {
            DeviceUtil.isPad
        }, absWindowW: {
            DeviceUtil.absWindowW
        }, absWindowH: {
            DeviceUtil.absWindowH
        }
    )
}
