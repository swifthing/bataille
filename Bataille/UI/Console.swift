//
//  Console.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

public class Console : UIProtocol {
    public init () {}
    public func display(_ text: String) { print(text) }
    public func input () -> String { return readLine()! }
}
