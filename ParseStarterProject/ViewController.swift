/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var product = PFObject(className: "Products")
        
        product["name"] = "Pizza"
        
        product["description"] = "Deliciously cheesy"
        
        product["price"] = 9.99
        
        product.saveInBackgroundWithBlock { (success, error) -> Void in
            
            if success == true {
                
                print("Successful")
                
            } else {
                
                print("Failed")
                print(error)
            }
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
