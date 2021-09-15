//
//  ViewController.swift
//  Lesson_17
//
//  Created by Evgeniy Nosko on 13.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var contactViews: [ContactContentView]!
    
    var names: [String] = ["Message", "Call", "Video", "Mail"]
    var icons: [UIImage?] = [UIImage(systemName: "message"), UIImage(systemName: "phone"), UIImage(systemName: "video"), UIImage(systemName: "mail")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        сортировка collection Views
        contactViews.sort { previousView, nextView in
            return nextView.tag > previousView.tag
        }
        
        for index in 0..<contactViews.count {
//            дизэйблим элемент в коллекции
            contactViews[index].makeEnable(isEnabled: index == 2)
            contactViews[index].update(
                image: icons[index],
                title: names[index]
            )
        }
//        тоже самый дизэйбл
        contactViews[2].makeEnable(isEnabled: false)
        
    }
    
}
