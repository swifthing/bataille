//
//  Console.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

class Console : UIProtocol {

    func display(_ text: String) { print(text) }
    func input () -> String { return readLine()?.trimmingCharacters(in: .whitespaces) ?? "" }

    func options(_ options: [String]) -> Int {
        display("\n##############")
        display("Choose an option: ")
        for (index, option) in options.enumerated() {
            display("\(index+1)) \(option)")
        }
        var choice = input()
        while Int(choice) == nil
                || (Int(choice)! < 1)
                || Int(choice)! >= options.count + 1
        { choice = input() }

        return Int(choice)!
    }

    func list(_ list: [String]) {
        for list in list {
            display(list)
        }
    }
}
