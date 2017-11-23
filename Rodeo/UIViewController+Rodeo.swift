//
//  UIViewController+Rodeo.swift
//  Rodeo
//
//  Created by Yukio Ejiri on 2017/09/20.
//  Copyright © 2017年 Yukio Ejiri. All rights reserved.
//

import Foundation

import UIKit

public protocol Rodeo {
    static var storyboardIdentifier: String { get }
    static var storyboardName: String { get }
}

extension UIViewController: Rodeo {
    open static var storyboardIdentifier: String {
        return String(describing: self)
    }

    open static var storyboardName: String {
        return storyboardIdentifier.replacingOccurrences(of: "ViewController", with: "")
    }
}

public extension UIViewController {

    static func instantiate<T: UIViewController>() -> T {
        return instantiate(bundle: nil)
    }

    static func instantiate<T: UIViewController>(bundle: Bundle?) -> T {
        let storyboard = UIStoryboard(name: T.storyboardName, bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: T.storyboardIdentifier) as! T
    }
}
