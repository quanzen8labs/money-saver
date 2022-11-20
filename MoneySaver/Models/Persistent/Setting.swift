//
//  Setting.swift
//  MoneySaver
//
//  Created by macbook on 08/11/2022.
//

import SwiftUI

struct Setting: Codable, Equatable {
    //Apprearance
    var accentColor: Color = .blue
}

extension Setting {
    init(from decoder: Decoder) throws {
        let container = try? decoder.container(keyedBy: CodingKeys.self)
        accentColor = (try? container?.decodeIfPresent(Color.self, forKey: .accentColor)) ?? .blue
    }
}
