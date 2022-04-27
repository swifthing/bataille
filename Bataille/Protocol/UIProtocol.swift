//
//  UIProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol UIProtocol {
    func display (_ text: String)
    func input () -> String
    func options (_ options: [String]) -> Int
    func list (_ array: [String])
}
