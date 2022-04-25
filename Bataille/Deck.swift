//
//  Deck.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Deck: DeckProtocol {
    var maximumCards: Int
    var distributedCards: [CardProtocol]
    var availableCards: [CardProtocol]

    init (maximumCards: Int) {
        self.maximumCards = maximumCards
        self.distributedCards = []
        self.availableCards = []
    }
}
