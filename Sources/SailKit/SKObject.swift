/*
 * SailSDK
 *
 * Created by Erik Bean on 9/9/19.
 * © 2019 Brick Water Studios. All rights reserved.
 */

import Foundation
import SailSDK

@available(*, renamed: "SKObject")
open class SailObject{}

/// A basic object complyng to the Sail API,
///
/// Note: This should be where wherever possible where not using another Sail
/// compliant object such as SailView
@available(iOS 6.0, macOS 10.8, tvOS 9.0, watchOS 2.0, *)
open class SKObject: SLObject, Sail {
    /// Module ID
    public let id: UUID
    /// Module Name
    public var moduleName: String = ""
    
    /// A new instance of SailObject
    public override init() {
        self.id = UUID()
        super.init()
        self.moduleName = String(describing: classForCoder.self)
    }
    
    public override var description: String {
        return String(id.description)
    }
    
    public override var debugDescription: String {
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
