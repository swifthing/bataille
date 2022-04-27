//
//  Deck.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Deck: DeckProtocol {

    var distributedCards: [CardProtocol]
    var availableCards: [CardProtocol]

    init () {
        self.distributedCards = []
        self.availableCards = []
        initDeck()
    }

    func initDeck () {
        let ranks = Card.getAllRanks()
        let suits = Card.getAllSuits()

        for rank in ranks {
            for suit in suits {
                availableCards.append(Card(rank: rank, suit: suit))
            }
        }
        availableCards = availableCards.shuffled()
    }

    func popCard () -> CardProtocol? {
        if let card = availableCards.first {
            handlePickedCard(card)
            return card
        }
        return nil
    }

    func handlePickedCard(_ card: CardProtocol) {
        availableCards = availableCards.filter { $0.rank != card.rank || $0.suit != card.suit }
        distributedCards.append(card)
    }
}
