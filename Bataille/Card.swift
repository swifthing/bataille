//
//  Card.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

enum Rank: Int, CaseIterable {
    case two = 2, three = 3, four = 4, five = 5, six = 6, seven = 7, eight = 8, nine = 9, ten = 10
    case jack = 11 , queen = 12, king = 13, ace = 14

    func description () -> String {
        switch self.rawValue {
            case 2...10:
                return String(self.rawValue)
            case 11:
                return "jack"
            case 12:
                return "quen"
            case 13:
                return "king"
            case 14:
                return "ace"
            default:
                return ""
        }
    }
}

enum Suit: String, CaseIterable {
    case spades, hearts, diamonds, clubs
    func description () -> String {
        return self.rawValue
    }
}

class Card: CardProtocol {
    var rank: Rank
    var suit: Suit
    var description: String

    init (rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
        self.description = rank.description() + " of " + suit.description()
    }

    static func getAllRanks() -> [Rank] {
        Rank.allCases
    }

    static func getAllSuits() -> [Suit] {
        Suit.allCases
    }
}

