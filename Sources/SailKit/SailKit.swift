
#if os(macOS)
import AppKit
public typealias SLColor = NSColor
public typealias SLView = NSView
public typealias SLViewController = NSViewController
public typealias SLTableViewController = NSTableView
#else
import UIKit
public typealias SLColor = UIColor
public typealias SLView = UIView
public typealias SLViewController = UIViewController
public typealias SLTableViewController = UITableViewController
#endif

internal protocol Sail {
    var id: UUID { get }
    var moduleName: String { get set }
}
