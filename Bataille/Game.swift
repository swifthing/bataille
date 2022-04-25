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
    var characters: [CharacterProtocol]
    var dealer: DealerProtocol

    init (numberOfCharacters : Int, numberOfCards: Int = 52, ui: UIProtocol = Console()) {
        self.ui = ui
        self.dealer = Dealer(deck: Deck(maximumCards: numberOfCards))
        self.characters = []
        initCharacters(numberOfCharacters)
    }

    func initCharacters (_ numberOfCharacters: Int) {
        for id in 0..<numberOfCharacters {
            ui.display("What's the name of character n° \(id + 1) ?")
            var inputName = ui.input()
            while (characters.contains { $0.name == inputName }) { inputName = self.ui.input() }
            characters.append(Character(name: inputName))
        }
    }

    public func start() {
        ui.display("\n##############")
        ui.display("Game started with \(dealer.deck.maximumCards) cards, and \(characters.count) characters: ")
        for character in characters {
            ui.display("--- \(character.name)")
        }
        distributeCards()
    }

    private func distributeCards () {
        dealer.distribute()
    }
}
