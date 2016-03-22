//
//  ViewController.swift
//  Example
//
//  Created by Larry on 16/3/19.
//  Copyright © 2016年 Larry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var newbox = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newbox.backgroundColor = UIColor.greenColor()
        self.view.addSubview(newbox)
        
        newbox.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(20, 20, 20, 20))
        }
        
        UIView.animateWithDuration(6, animations: { () -> Void in
            self.newbox.backgroundColor = UIColor.redColor()
            
            self.newbox.snp_removeConstraints()
            
            self.newbox.snp_makeConstraints { (make) -> Void in
                make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(80, 80, 80, 80))
            }
            
            }) { (finished) -> Void in
                if finished{
                    self.newbox.snp_removeConstraints()
                    self.newbox.snp_makeConstraints(closure: { (make) -> Void in
                        
                        make.width.height.equalTo(200)
                        make.center.equalTo(self.view)
                        
                        self.newbox.backgroundColor = UIColor.yellowColor()
                    })
                }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

