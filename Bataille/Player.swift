//
//  Player.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Player: CharacterProtocol {
    var cardsInHands: [CardProtocol]
    var name: String
    let ui: UIProtocol

    init (_ ui: UIProtocol = Console(), name: String) {
        self.ui = ui
        self.name = name
        self.cardsInHands = []
    }
}
