//
//  Ext_NSObject.swift
//  TryingOutStevia
//
//  Created by Maaz on 14/04/23.
//

#if canImport(UIKit)
import UIKit

public extension NSObject {
    
    func on(_ event: String, _ callback:@escaping () -> Void) {
        _ = NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: event),
                                                                object: nil,
                                                                queue: nil) { _ in
            callback()
        }
    }
}
#endif
