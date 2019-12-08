/*
 * SailSDK
 *
 * Created by Erik Bean on 9/12/19.
 * © 2019 Brick Water Studios. All rights reserved.
 */

import Foundation
import CoreGraphics
import SailSDK

@available(*, renamed: "SKView")
open class SailView{}

/// A custom UIView conforming to the Sail Protocol
@available(iOS 6.0, tvOS 9.0, macOS 10.8, *) // watchOS 2.0
open class SKView: SLView, Sail {
    /// Module ID
    public let id: UUID
    /// Module Name
    public var moduleName: String = ""
    
    /// A new SailView with a zero frame
    public init() {
        self.id = UUID()
        super.init(frame: .zero)
        self.moduleName = String(describing: classForCoder.self)
    }
    
    /// Initializes and returns a newly allocated view object with the specified frame rectangle.
    ///
    /// The new view object must be inserted into the view hierarchy of a window before it
    /// can be used. If you create a view object programmatically, this method is the designated
    /// initializer for the SailView class. Subclasses can override this method to perform any custom
    /// initialization but must call super at the beginning of their implementation.
    /// If you use Interface Builder to design your interface, this method is not called when your view
    /// objects are subsequently loaded from the nib file. Objects in a nib file are reconstituted and then
    /// initialized using their init(coder:) method, which modifies the attributes of the view to match the
    /// attributes stored in the nib file. For detailed information about how views are loaded from a nib file,
    /// see Resource Programming Guide.
    ///
    /// Parameters aRect: The frame rectangle for the view, measured in points. The origin of the frame
    /// is relative to the superview in which you plan to add it. This method uses the frame rectangle to
    /// set the center and bounds properties accordingly.
    ///
    /// Returns: An initialized view object.
    public override init(frame: CGRect) {
        self.id = UUID()
        super.init(frame: frame)
        self.moduleName = String(describing: classForCoder.self)
    }
    
    public required init?(coder: NSCoder) {
        self.id = UUID()
        super.init(coder: coder)
        self.moduleName = String(describing: classForCoder.self)
    }
    
    open override var description: String {
        return id.description
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
