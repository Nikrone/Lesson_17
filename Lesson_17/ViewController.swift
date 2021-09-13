//
//  ViewController.swift
//  Lesson_17
//
//  Created by Evgeniy Nosko on 13.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var contactViews: [UIView]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        contactViews.sort { previous, nextView in
            return nextView.tag > previous.tag
        }
        
//        for contactView in contactViews {
//            contactView.update(image: , title: "View")
//    }


}

}
