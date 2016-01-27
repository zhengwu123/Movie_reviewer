//
//  detialViewController.swift
//  Movie review
//
//  Created by New on 1/5/16.
//  Copyright © 2016 New. All rights reserved.
//

import UIKit

class detialViewController: UIViewController, UITextViewDelegate{
    
    
    @IBOutlet var scrollViewOutput: UIScrollView!
    @IBOutlet var popularityLabel: UILabel!
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var releaseDate: UILabel!
    @IBOutlet var vote_averageLabel: UILabel!
    @IBOutlet var voteCountLabel: UILabel!
    @IBOutlet var detailedLabel: UITextView!
    @IBOutlet  var DetailImage: UIImageView!
    
    
    var popularityLabelText: String!
    var movieTitleText: String!
    var releaseDateText: String!
    var vote_averageLabelText: String!
    var voteCountLabelText: String!
    var detailedLabelText: String!
    var DetailImageURL: NSURL!
    
    @IBOutlet var viewOutLet: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailedLabel.delegate = self
        scrollViewOutput.contentSize.height = 800
        scrollViewOutput.contentSize.width = self.scrollViewOutput.frame.width
        /*CGSize(width:scrollViewOutput.frame.width, height: viewOutLet.frame.origin.y + viewOutLet.frame.size.height)*/
        
        
        self.detailedLabel.text = detailedLabelText
        self.DetailImage.setImageWithURL(DetailImageURL)
        self.movieTitle.text = movieTitleText
        self.vote_averageLabel.text = vote_averageLabelText
        //self.voteCountLabel.text = voteCountLabelText
        //self.vote_averageLabel.text = vote_averageLabelText
        //self.releaseDate.text = releaseDateText
        //self.popularityLabel.text = popularityLabelText
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
