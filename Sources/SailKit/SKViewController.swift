/*
 * SailSDK
 *
 * Created by Erik Bean on 9/13/19.
 * © 2019 Brick Water Studios. All rights reserved.
 */

import Foundation
import CoreGraphics
import SailSDK

@available(*, renamed: "SKViewController")
open class SailViewController{}

/// A custom View conforming to the Sail Protocol
@available(iOS 6.0, tvOS 9.0, macOS 10.5, *) // watchOS 2.0
open class SKViewController: SLViewController, Sail {
    /// Module ID
    public let id: UUID
    /// Module Name
    public var moduleName: String = ""
    
    /// A new SailViewController with an empty frame
    public init() {
        self.id = UUID()
        super.init(nibName: nil, bundle: nil)
        self.moduleName = String(describing: classForCoder.self)
        
    }
    
    /// Create a new SailViewController with an existing nib
    ///
    /// Note: See UIViewController or NSViewController per respective OS for more details
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.id = UUID()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.moduleName = String(describing: classForCoder.self)
    }
    
    public required init?(coder: NSCoder) {
        self.id = UUID()
        super.init(coder: coder)
        self.moduleName = String(describing: classForCoder.self)
    }
    
    open override var description: String {
        return String(id.description)
    }
    
    open override var debugDescription: String {
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


