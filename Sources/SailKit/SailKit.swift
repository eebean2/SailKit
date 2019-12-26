#if os(macOS)
import AppKit
public typealias SLView = NSView
public typealias SLViewController = NSViewController
public typealias SLTableViewController = NSTableView
public typealias SLTableViewCell = NSTableCellView
public typealias SLLabel = NSTextField
public typealias SKColor = NSColor
public typealias SKImage = NSImage
#else
import UIKit
public typealias SLView = UIView
public typealias SLViewController = UIViewController
public typealias SLTableViewController = UITableViewController
public typealias SLTableViewCell = UITableViewCell
public typealias SLLabel = UILabel
public typealias SKColor = UIColor
public typealias SKImage = UIImage
#endif
