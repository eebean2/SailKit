//
//  File.swift
//  
//
//  Created by Erik Bean on 9/21/19.
//

import Foundation
import CoreGraphics
import SailSDK

@available(iOS 6.0, macOS 10.8, tvOS 9.0, watchOS 2.0, *)
public class SailTableViewController: SLTableViewController, Sail {
    
    /// Module ID
    public let id: UUID
    /// Module Name
    public var moduleName: String = ""
    
    /// A new SailViewController with an empty frame
    public init() {
        self.id = UUID()
        #if !os(macOS)
        super.init(nibName: nil, bundle: nil)
        #else
        super.init(frame: .zero)
        #endif
        self.moduleName = String(describing: classForCoder.self)
    }
    
    /// Create a new SailViewController with an existing nib
    ///
    /// Note: See UIViewController or NSViewController per respective OS for more details
    #if !os(macOS)
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.id = UUID()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.moduleName = String(describing: classForCoder.self)
    }
    #endif
    
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
