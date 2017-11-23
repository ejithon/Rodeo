//
//  UIView+Rodeo.swift
//  Rodeo
//
//  Created by ejithon on 2017/09/21.
//  Copyright © 2017 ejithon. All rights reserved.
//

import Foundation

public protocol NibLoadable: class {}

extension UIView: NibLoadable {}

extension NibLoadable {

    static var className: String {
        return String(describing: self)
    }

    public static func loadNib(name: String) -> Self {
        return Bundle.main.loadNibNamed(name, owner: nil, options: nil)![0] as! Self
    }

    public static func loadNib() -> Self {
        return Bundle.main.loadNibNamed(className, owner: nil, options: nil)![0] as! Self
    }

    public static func nib() -> UINib {
        return UINib(nibName: className, bundle: Bundle(for: self))
    }
}


