//
//  MessageDefaultPrinterBuilder.swift
//  HelloWorld
//
//  Created by Nikita Lazarev-Zubov on 15.8.2021.
//

/// Builds the default message printer step by step.
final class MessageDefaultPrinterBuilder {

    /// Possible errors that can happen while the printer is being built.
    enum MessageDefaultPrinterBuilderError: Error {

        /// The message to be printed is not set.
        /// - Tag: MessageDefaultPrinterBuilderErrorEmptyMessage
        case emptyMessage

    }

    // MARK: - Properties

    // MARK: Private properties

    private weak var delegate: MessagePrinterDelegate?
    private var message: Printable?

    // MARK: - Methods

    /// Sets a message to the printer being built.
    /// - Parameter message: The message.
    /// - Returns: The current builder with the message set.
    func with(message: Printable) -> MessageDefaultPrinterBuilder {
        self.message = message
        return self
    }

    /// Sets a delegate to the printer being built.
    /// - Parameter message: The delegate.
    /// - Returns: The current builder with the delegate set.
    func with(delegate: MessagePrinterDelegate?) -> MessageDefaultPrinterBuilder {
        self.delegate = delegate
        return self
    }

    /// Builds the printer with previously provided parameters.
    /// - Throws: [The empty message error](x-source-tag://MessageDefaultPrinterBuilderErrorEmptyMessage) if a message wasn't set.
    /// - Returns: The ready to user printer.
    func build() throws -> MessagePrinter {
        guard let message = message else {
            throw MessageDefaultPrinterBuilderError.emptyMessage
        }

        var printer = MessageDefaultPrinter(message: message)
        printer.delegate = delegate

        return printer
    }

}
