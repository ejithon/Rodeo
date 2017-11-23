//
//  MainViewController.swift
//  Rodeo
//
//  Created by ejithon on 2017/11/23.
//  Copyright © 2017 ejithon. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func onTouchRodeo(_ sender: Any) {
        let sub: SubViewController = SubViewController.instantiate()
        present(sub, animated: true, completion: nil)
    }
}
