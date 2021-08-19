//
//  main.swift
//  HelloWorld
//
//  Created by Nikita Lazarev-Zubov on 15.8.2021.
//

/// Delegated on milestones of the printing process and prints them to the console.
final class MessagePrinterDefaultDelegate: MessagePrinterDelegate {

    // MARK: - Methods

    // MARK: MessagePrinterDelegate protocol methods

    func messagePrinterWillStartPrinting(_ messagePrinter: MessagePrinter) {
        print("Message printer starts printing.")
    }

    func messagePrinterDidEndPrinting(_ messagePrinter: MessagePrinter) {
        print("Message printer finished printing.")
    }

}

// MARK: -

let delegate = MessagePrinterDefaultDelegate()
if let printer = try? MessagePrinterFactory.makeHelloWorldPrinter(delegate: delegate) {
    printer.printMessage()
}
