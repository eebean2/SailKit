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
public struct SailColor {}

extension SailColor {
    /// Generic background color when no overrides provided
    public static var backgroundColor: SLColor {
        return SLColor(red: 13/255, green: 13/255, blue: 13/255, alpha: 13/255)
    }
    
    /// Generic light text color when no overrides provided
    public static var lightTextColor: SLColor {
        return SLColor.white
    }
    
    /// Generic dark text color when no overrides provided
    public static var darkTextColor: SLColor {
        return SLColor(red: 0, green: 0, blue: 0, alpha: 0.25)
    }
}
