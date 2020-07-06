//
//  UITextField.swift
//  Utility
//
//  Created by user on 06/07/20.
//  Copyright © 2020 Namrata Khanduri. All rights reserved.
//

import UIKit
extension UITextField {
    @IBInspectable public var textInsets: CGPoint {
        get {
            return CGPoint.zero
        }
        set {
            layer.sublayerTransform = CATransform3DMakeTranslation(newValue.x, newValue.y, 0);
        }
    }
    @IBInspectable public var placeholderColor: UIColor {
        get {
            return self.attributedPlaceholder?.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor ?? .lightText
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: [.foregroundColor: newValue])
        }
    }
}
