//
//  Player.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Player: PlayerProtocol {
    var cardsInHands: [CardProtocol]
    var name: String

    init (name: String) {
        self.name = name
        self.cardsInHands = []
    }
}
