//
//  CharacterProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol CharacterProtocol {
    var name: String { get set }
    var ui: UIProtocol { get }
    var cardsInHands : [CardProtocol] { get set }
}
