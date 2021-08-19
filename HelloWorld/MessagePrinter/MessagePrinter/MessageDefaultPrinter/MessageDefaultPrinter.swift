//
//  MessageDefaultPrinter.swift
//  HelloWorld
//
//  Created by Nikita Lazarev-Zubov on 15.8.2021.
//

/// Prints messages to the console.
struct MessageDefaultPrinter: MessagePrinter {

    // MARK: - Properties

    /// The message to print.
    let message: Printable

    // MARK: MessagePrinter protocol properties

    weak var delegate: MessagePrinterDelegate?

    // MARK: - Methods

    // MARK: MessagePrinter protocol methods

    func printMessage() {
        delegate?.messagePrinterWillStartPrinting(self)
        print(message)
        delegate?.messagePrinterDidEndPrinting(self)
    }

}
