//
//  OrangeViewController.swift
//  ColorBoard
//
//  Created by Robbie on 15/7/29.
//  Copyright (c) 2015年 Ted Wei. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: UIBarButtonItem) {
        self.presentingViewController!.dismissViewControllerAnimated(true, completion: { () -> Void in
            //do nothing
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
