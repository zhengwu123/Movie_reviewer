//
//  SearchViewController.swift
//  Movie review
//
//  Created by New on 1/11/16.
//  Copyright © 2016 New. All rights reserved.
//

import UIKit


class SearchViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource , UITableViewDelegate{

    @IBOutlet var tableView: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    
    let data = ["Star Wars: The Force Awakens", "The Revenant", "The Hateful Eight", "Sherlock: The Abominable Bride",
        "Joy", "The Big Short", "The Intouchables", "The Godfather",
        "Paperman", "Victoria", "Interstellar", "Whiplash",
        "Room", "Feast", "Krampus", "Spirited Away",
        "Boruto: Naruto the Movie", "Song of the Sea", "Princess Mononoke", "Gone Girl","The Shawshank Redemption","Garage Sale Mystery: Guilty Until Proven Innocent","Extraction","Love's Complicated","The 5th Wave","Point Break","The Ridiculous 6","Alvin and the Chipmunks: The Road Chip","The Forest"]
    var flitered: [String]!
    var movies: [NSDictionary]?
    var movieTitles: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        searchBar.delegate = self
        tableView.delegate = self
       flitered = data
        let apiKey = "a07e22bc18f5cb106bfe4cc1f83ad8ed"
        let url = NSURL(string:"https://api.themoviedb.org/3/movie/top_rated?api_key=\(apiKey)")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession(
            configuration: NSURLSessionConfiguration.defaultSessionConfiguration(),
            delegate:nil,
            delegateQueue:NSOperationQueue.mainQueue()
        )
        
        let task : NSURLSessionDataTask = session.dataTaskWithRequest(request,
            completionHandler: { (dataOrNil, response, error) in
                if let data = dataOrNil {
                    if let responseDictionary = try! NSJSONSerialization.JSONObjectWithData(
                        data, options:[]) as? NSDictionary {
                            NSLog("response: \(responseDictionary)")
                            self.movies = responseDictionary["results"] as? [NSDictionary]
                           
                            self.tableView.reloadData()
                    }
                }
        });
       
        //}
        task.resume()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

       
           return flitered.count
     
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        
        let cell = tableView.dequeueReusableCellWithIdentifier("searchCell") as! searchTableCell
      
         cell.movietitle?.text = flitered[indexPath.row]
   
        return cell
    }
   
    //func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) //{
       // <#code#>
  //  }
    @IBAction func ontap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        flitered = searchText.isEmpty ? data : data.filter({(dataString: String) -> Bool in
            return dataString.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil
        })
        
       tableView.reloadData()
    }
}
