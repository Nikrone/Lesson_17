//
//  ContactContentView.swift
//  Lesson_17
//
//  Created by Evgeniy Nosko on 13.09.21.
//

import Foundation
import UIKit

// имя файла xib и swift файла ДОЛЖНЫ БЫТЬ ОДИНАКОВЫ!

class ContactContentView: BaseDesignableView {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    private var contentView: UIView!
        
        func update(image: UIImage?, title: String) {
            imageView.image = image
            titleLabel.text = title
        }
    
    func makeEnable(isEnabled: Bool) {
        if isEnabled {
            titleLabel.textColor = .black
            imageView.tintColor = .black
        } else {
            titleLabel.textColor = .gray
            imageView.tintColor = .gray
        }
    }
}
