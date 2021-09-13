//
//  ContactContentView.swift
//  Lesson_17
//
//  Created by Evgeniy Nosko on 13.09.21.
//

import Foundation
import UIKit

class ContactContentView: UIView {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    private var contentView: UIView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .clear
        contentView = UINib(nibName: "ContactContentView", bundle: Bundle.main).instantiate(withOwner: self, options: nil).first as! UIView
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(contentView)
    }
    
    func update(image: UIImage, title: String) {
        imageView.image = image
        titleLabel.text = title
    }
}
