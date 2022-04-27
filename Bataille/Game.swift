//
//  Game.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Game: GameProtocol {

    var endOfGame = false
    let ui : UIProtocol
    var players: [PlayerProtocol]
    var dealer: DealerProtocol

    init (numberOfPlayers : Int, numberOfCards: Int = 52, ui: UIProtocol = Console()) {
        self.ui = ui
        self.players = []
        self.dealer = Dealer(deck: Deck())
        self.initPlayers(numberOfPlayers)
    }

    func initPlayers (_ numberOfPlayers: Int) {
        for id in 0..<numberOfPlayers {
            ui.display("What's the name of player n° \(id + 1) ?")
            var inputName = ui.input()
            while (players.contains { $0.name == inputName } || inputName.isEmpty) { inputName = ui.input() }
            players.append(Player(name: "Player \(id+1)) " + inputName))
        }
        
        listPlayers()
    }

    func start() {
        while endOfGame == false {
            var options = ["Show the game & players", "Quit"]
            if dealer.readyToPlay {
                options.insert("Next round", at: 0)
            } else {
                options.insert("Distribute cards", at: 0)
            }
            let choice = ui.options(options)
            switch choice {
                case 1:
                    nextRound()
                case 2:
                    listPlayers()
                    start()
                case 3:
                    return quitGame()
                default: break
            }
            checkWinnerExists()
        }
    }

    func nextRound () {
        if dealer.readyToPlay {
            dealer.nextRound()
        } else {
            distributeCards()
        }
    }

    func checkWinnerExists () {
        for player in players {
            if player.cardsInHands.isEmpty {
                quitGame()
                return
            }
        }
    }

    func listPlayers () {
        let totalCard = dealer.deck.availableCards.count + dealer.deck.distributedCards.count
        ui.display("\nGame started with \(totalCard) cards, and \(players.count) players:")
        for player in players {
            ui.display("--- \(player.name) has actually \(player.cardsInHands.count) cards :")
            if player.cardsInHands.isEmpty == false {
                ui.display(player.cardsInHands.map { $0.description }.joined(separator: ", ") )
            }
        }
    }

    func distributeCards () {
        ui.display("\n##############")
        ui.display("Card distribution ...")
        // dealer returns array of players which have cards in hands
        dealer.distribute (players: players) { newPlayers in
            self.players = newPlayers

            for player in self.players {
                self.ui.display("--- \(player.name) has actually \(player.cardsInHands.count) cards")
            }
        }
    }

    func quitGame() {
        endOfGame = true
        ui.display("\n##############")
        ui.display("Game finished")
        if dealer.readyToPlay, let winner = players.filter({ $0.cardsInHands.isEmpty == true }).first {
            ui.display("--- And the winner is \(winner.name) !")
        }
    }
}
