//
//  ExUIView.swift
//  Utility
//
//  Created by user on 06/07/20.
//  Copyright © 2020 Namrata Khanduri. All rights reserved.
//

import UIKit
extension UIView{
    
    
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable public var cornerRadiusWithScale: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = bounds.width > bounds.height ? bounds.width*newValue : bounds.height * newValue
            layer.masksToBounds = true
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable public var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    public var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    public var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable public var shadowColor: UIColor? {
        
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    // add shadow
    public func addShadow(color: UIColor = .lightGray, radius: CGFloat = 1, opacity: Float = 5 ) {
        
        let shadowView = UIView(frame: frame)
        shadowView.tag = 102
        shadowView.layer.cornerRadius = layer.cornerRadius
        
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius).cgPath
        shadowLayer.fillColor = UIColor.white.cgColor
        shadowLayer.shadowColor = color.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        shadowLayer.shadowOpacity = opacity
        shadowLayer.shadowRadius = radius
        shadowView.layer.insertSublayer(shadowLayer, at: 0)
        shadowView.layer.shouldRasterize = true
        shadowView.backgroundColor = .clear
        
        superview!.subviews.forEach {
            if $0.tag == 102 {
                $0.removeFromSuperview()
            }
        }
        
        superview?.addSubview(shadowView)
        superview?.insertSubview(shadowView, at: 0)
        superview?.insertSubview(self, at: 1)
    }
    
    
}
