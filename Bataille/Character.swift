//
//  Character.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

public class Character: CharacterProtocol {
    var cardsInHands: [CardProtocol]
    var name: String
    let ui: UIProtocol

    public init (_ ui: UIProtocol = Console(), name: String) {
        self.ui = ui
        self.name = name
        self.cardsInHands = []
    }
}
