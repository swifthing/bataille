//
//  DealerProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol DealerProtocol {

    var readyToPlay: Bool { get set }
    var deck: DeckProtocol { get set }
    var round: Int { get set }
    
    func nextRound ()
    func distribute (players: [PlayerProtocol], complete: @escaping ([PlayerProtocol]) -> ())
}
