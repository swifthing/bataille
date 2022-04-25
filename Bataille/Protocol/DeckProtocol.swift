//
//  DeckProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol DeckProtocol {
    var maximumCards: Int { get }
    var availableCards: [CardProtocol] { get }
    var distributedCards: [CardProtocol] { get }
}
