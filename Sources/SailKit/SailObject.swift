/*
 * SailSDK
 *
 * Created by Erik Bean on 9/9/19.
 * © 2019 Brick Water Studios. All rights reserved.
 */

import Foundation
import SailSDK

/// A basic object complyng to the Sail API,
///
/// Note: This should be where wherever possible where not using another Sail
/// compliant object such as SailView
@available(iOS 6.0, macOS 10.8, tvOS 9.0, watchOS 2.0, *)
open class SailObject: Sail {
    /// Module ID
    public let id: UUID
    /// Module Name
    public var moduleName: String = ""
    
    /// A new instance of SailObject
    public init() {
        self.id = UUID()
    }
}

extension SailObject: Equatable {
    public static func == (lhs: SailObject, rhs: SailObject) -> Bool {
        return lhs.id == rhs.id
    }
}

extension SailObject: CustomStringConvertible {
    public var description: String {
        return String(id.description)
    }
}

extension SailObject: CustomDebugStringConvertible {
    public var debugDescription: String {
        return """
        * * * * * * * * * * * * * * *
        *
        * SailObject Debug
        *
        * ID: \(id)
        * Name: \(moduleName)
        *
        * * * * * * * * * * * * * * *
        """
    }
}
