//
//  MessagePrinter.swift
//  HelloWorld
//
//  Created by Nikita Lazarev-Zubov on 15.8.2021.
//

/// Delegated on milestones of the printing process.
protocol MessagePrinterDelegate: AnyObject {

    // MARK: - Methods

    /// Called right before the printer starts printing.
    /// - Parameter messagePrinter: The printing printer.
    func messagePrinterWillStartPrinting(_ messagePrinter: MessagePrinter)
    /// Called right after the printer ends printing.
    /// - Parameter messagePrinter: The printing printer.
    func messagePrinterDidEndPrinting(_ messagePrinter: MessagePrinter)

}

// MARK: -

/// Prints messages.
protocol MessagePrinter {

    // MARK: - Properties

    /// Delegated on milestones of the printing process.
    var delegate: MessagePrinterDelegate? { get set }

    // MARK: - Methods

    /// Prints the message.
    func printMessage()

}
