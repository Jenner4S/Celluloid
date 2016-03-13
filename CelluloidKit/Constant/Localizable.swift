//
//  Localizable.swift
//  Celluloid
//
//  Created by Mango on 16/3/13.
//  Copyright © 2016年 Mango. All rights reserved.
//

import Foundation

public enum L10n {
    /// done
    case Done
}

extension L10n: CustomStringConvertible {
    public var description: String { return self.string }
    
    public var string: String {
        switch self {
        case .Done:
            return L10n.tr("done")
        }
    }
    
    private static func tr(key: String, _ args: CVarArgType...) -> String {
        let bundle = NSBundle(identifier: buddleIndentifier)!
        let format = NSLocalizedString(key, bundle: bundle, comment: "")
        return String(format: format, arguments: args)
    }
}

public func tr(key: L10n) -> String {
    return key.string
}
