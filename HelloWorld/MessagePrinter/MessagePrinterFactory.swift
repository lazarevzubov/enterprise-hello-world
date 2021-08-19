//
//  MessagePrinterFactory.swift
//  HelloWorld
//
//  Created by Nikita Lazarev-Zubov on 15.8.2021.
//

/// Creates various kinds of message printers.
struct MessagePrinterFactory {

    /// The errors that can happen while creating a printer.
    enum MessagePrinterFactoryError: Error {

        /// The internal printer builder error.
        /// - Tag: MessagePrinterFactoryErrorBuilderError
        case builderError

    }

    // MARK: - Methods

    /// Creates the printer to print 'Hello world!'
    /// - Parameter delegate: The object delegated on milestones of the printing process.
    /// - Throws: [The internal builder error](x-source-tag://MessagePrinterFactoryErrorBuilderError) if the underlying building process fails.
    /// - Returns: The ready to use printer.
    static func makeHelloWorldPrinter(delegate: MessagePrinterDelegate? = nil) throws -> MessagePrinter {
        do {
            return try MessageDefaultPrinterBuilder()
                .with(message: "Hello world!")
                .with(delegate: delegate)
                .build()
        } catch {
            throw MessagePrinterFactoryError.builderError
        }
    }

}
