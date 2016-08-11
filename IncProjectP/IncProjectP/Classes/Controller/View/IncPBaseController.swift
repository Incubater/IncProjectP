//
//  IncPBaseController.swift
//  IncProjectP
//
//  Created by ymook on 16/8/11.
//  Copyright © 2016年 lmy. All rights reserved.
//

import Foundation
import JKFramework

class IncPBaseController: JKBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }

}
