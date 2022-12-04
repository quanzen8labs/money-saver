//
//  Category.swift
//  MoneySaver
//
//  Created by macbook on 23/11/2022.
//

import Foundation

enum Category {
    case pets
    case snacks
    case coffee
    case groceries
    case taxi
    case clothing
    case education
    case gift
    
    var emoji: String {
        switch self {
        case .pets: return "🐶"
        case .snacks: return "🥟"
        case .coffee: return "☕️"
        case .groceries: return "🛒"
        case .taxi: return "🚕"
        case .clothing: return "👔"
        case .education: return "📚"
        case .gift: return "🎁"
        }
    }
}
