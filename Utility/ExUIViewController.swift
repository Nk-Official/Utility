//
//  ExUIViewController.swift
//  Utility
//
//  Created by user on 06/07/20.
//  Copyright © 2020 Namrata Khanduri. All rights reserved.
//

import UIKit
extension UIViewController{
    public func showAlert(_ message: String, withTitle title: String = "") {
        onMain { [weak self] in
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self?.present(alertController, animated: true, completion: nil)
        }
    }
    public func onMain(_ block: @escaping () -> ()) {
        if Thread.isMainThread {
            block()
        } else {
            DispatchQueue.main.async(execute: block);
        }
    }
}
