/*
 * SailSDK
 *
 * Created by Erik Bean on 9/13/19.
 * © 2019 Brick Water Studios. All rights reserved.
 */

/// Base color scheme for the Sail Project
///
/// Todo: Add support for overrides
@available(iOS 2.0, tvOS 9.0, watchOS 2.0, macOS 10.9, *)
extension SKColor {
    public static var backgroundColor: SKColor {
        return SKColor(red: 13/255, green: 13/255, blue: 13/255, alpha: 13/255)
    }
    
    public static var lightTextColor: SKColor {
        return SKColor.white
    }
    
    public static var darkTextColor: SKColor {
        return SKColor(red: 0, green: 0, blue: 0, alpha: 0.25)
    }
}

