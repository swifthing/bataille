//
//  CardProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol CardProtocol {
    var rank: Rank { get set }
    var suit: Suit { get set }
    var description: String { get }

    static func getAllRanks () -> [Rank]
    static func getAllSuits () -> [Suit]
}
