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
    var players: [PlayerProtocol] { get set }

    func listPlayers ()
    func start()
    func initPlayers (_ numberOfPlayers: Int)
    func distributeCards ()
    func checkWinnerExists ()
    func quitGame ()
}
