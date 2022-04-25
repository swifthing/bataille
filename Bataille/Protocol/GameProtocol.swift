//
//  GameProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol GameProtocol {
    var endOfGame: Bool { get set }
    var ui : UIProtocol { get }
    var dealer: DealerProtocol { get set }
    var characters: [CharacterProtocol] { get set }
    func start()
}
