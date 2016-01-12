//
//  boxCell.swift
//  Movie review
//
//  Created by New on 1/7/16.
//  Copyright © 2016 New. All rights reserved.
//

import UIKit

class boxCell: UITableViewCell {
    
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var textView1: UITextView!
    @IBOutlet var image1: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
