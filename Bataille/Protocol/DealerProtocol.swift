//
//  DealerProtocol.swift
//  Bataille
//
//  Created by Anis on 25/04/2022.
//

import Foundation

protocol DealerProtocol {

    var deck: DeckProtocol { get set }
    func distribute ()
}
