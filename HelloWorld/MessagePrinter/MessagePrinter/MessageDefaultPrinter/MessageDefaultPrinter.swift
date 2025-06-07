//
//  MessageDefaultPrinter.swift
//  HelloWorld
//
//  Created by Nikita Lazarev-Zubov on 15.8.2021.
//

/// Prints messages to the console.
struct MessageDefaultPrinter: MessagePrinter {

    // MARK: - Properties

    // MARK: MessagePrinter protocol properties

    weak var delegate: MessagePrinterDelegate?

    // MARK: Private methods

    private let message: Printable

    // MARK: - Initialization

    /// Creates an object that prints messages to the console.
    /// - Parameter message: The message to print.
    init(message: Printable) {
        self.message = message
    }

    // MARK: - Methods

    // MARK: MessagePrinter protocol methods

    func printMessage() {
        delegate?.messagePrinterWillStartPrinting(self)
        print(message)
        delegate?.messagePrinterDidEndPrinting(self)
    }

}
