//
//  ViewController.swift
//  DZKoinSwift
//
//  Created by 17972497 on 11/18/2021.
//  Copyright (c) 2021 17972497. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coffeeShop = CoffeeShop()

        coffeeShop.maker.brew()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

