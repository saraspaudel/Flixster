//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Saras Paudel on 2/17/19.
//  Copyright © 2019 Saras Paudel. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsysLabel: UILabel!
    
    var movie : [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsysLabel.text = movie["overview"] as? String
        synopsysLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["backdrop_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        backdrop.af_setImage(withURL: posterURL!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
