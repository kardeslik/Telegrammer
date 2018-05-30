//
//  Handler.swift
//  Async
//
//  Created by Givi Pataridze on 21.04.2018.
//

import HTTP

public typealias HandlerCallback = (_ update: Update, _ updateQueue: Worker?, _ jobQueue: Worker?) throws -> Void

public typealias ErrorHandlerCallback = (_ bot: Bot, _ update: Update, _ error: Error) -> Void

public protocol Handler {
    func check(update: Update) -> Bool
    func handle(update: Update, dispatcher: Dispatcher) throws
}
