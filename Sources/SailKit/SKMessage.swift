/*
 * SailSDK
 *
 * Created by Erik Bean on 11/1/19.
 * © 2019 Brick Water Studios. All rights reserved.
 */

import Foundation
import SailSDK

@objc final public class SKMessage: NSObject, Sail {
    public var id: UUID = UUID()
    public var moduleName: String = ""
    public var username: NSAttributedString!
    public var message: NSAttributedString?
    public var image: SKImage?
    public var type: SKMessageType!
    public let createdOn: Date!
    public var editedOn: Date!
    public var isEdited = false
    
    internal override init() {
        self.username = NSAttributedString(string: "TEST_INVALID_TEST")
        self.createdOn = Date()
    }
    
    public init(user: NSAttributedString, message: NSAttributedString, createdOn: Date = Date()) {
        moduleName = String(describing: self.type)
        self.id = UUID()
        self.username = user
        self.message = message
        self.type = .text
        self.createdOn = createdOn
    }
    
    public init(user: NSAttributedString, photo: SKImage, createdOn: Date = Date()) {
        moduleName = String(describing: self.type)
        self.id = UUID()
        self.username = user
        self.image = photo
        self.type = .image
        self.createdOn = createdOn
    }
    
    public convenience init(user: String, message: String) {
        self.init(user: NSAttributedString(string: user), message: NSAttributedString(string: message))
    }
    
    public init(from json: [String: Any]) throws {
        fatalError("JulieanneSDK Error: " + #function + " hast not been setup yet")
    }
    
    public func toJSON() -> [String: Any] {
        fatalError("JulieanneSDK Error: " + #function + " hast not been setup yet")
    }
    
    public func update(_ photo: SKImage, editedOn: Date = Date()) {
        self.image = photo
        self.editedOn = editedOn
    }
    
    public func update(_ message: NSAttributedString, editedOn: Date = Date()) {
        self.message = message
        self.editedOn = editedOn
        self.isEdited = true
    }
}

//TODO: Add custom debug string

//extension SKMessage: CustomDebugStringConvertible {
//    var debugDescription: String {
//
//    }
//}

public enum SKMessageType {
    case text
    case image
    case mixed
}
