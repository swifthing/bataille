//
//  DeckProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol DeckProtocol {
    var availableCards: [CardProtocol] { get }
    var distributedCards: [CardProtocol] { get }
    func initDeck ()
    func popCard () -> CardProtocol?
    func handlePickedCard (_ card: CardProtocol)
}
