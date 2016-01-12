//
//  movieCellController.swift
//  Movie review
//
//  Created by New on 1/5/16.
//  Copyright © 2016 New. All rights reserved.
//

import UIKit

class movieCellController: UITableViewCell {

    
    @IBOutlet var imageOut: UIImageView!
    @IBOutlet var titleLabel: UILabel!
   
    
    @IBOutlet var DescriptionTextArea: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
    

}
