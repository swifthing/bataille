//
//  Dealer.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Dealer: DealerProtocol {

    // the game is ready to play when all players have cards
    var readyToPlay: Bool
    var round: Int
    var deck: DeckProtocol
    
    init (deck: DeckProtocol) {
        self.deck = deck
        self.round = 0
        self.readyToPlay = false
    }

    func distribute (players: [PlayerProtocol], complete: @escaping ([PlayerProtocol]) -> ()) {

        var newPlayers = players

        // to prevent dealer to distribute inequal quantity of cards
        while deck.availableCards.count >= players.count {
            for (index, _) in newPlayers.enumerated() {
                if let card = deck.popCard() {
                    newPlayers[index].cardsInHands.append(card)
                }
            }
        }
        readyToPlay = true
        complete(newPlayers)
    }

    func nextRound() {

    }
}
