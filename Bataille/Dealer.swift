//
//  Dealer.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Dealer: DealerProtocol {

    var deck: DeckProtocol
    
    init (deck: DeckProtocol) {
        self.deck = deck
    }

    func distribute() {
        for _ in 0..<deck.maximumCards {
            
        }
    }
}
