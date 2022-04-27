//
//  PlayerProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol PlayerProtocol {
    var name: String { get set }
    var cardsInHands : [CardProtocol] { get set }
}
