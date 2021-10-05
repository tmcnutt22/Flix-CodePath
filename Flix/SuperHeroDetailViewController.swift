//
//  SuperHeroDetailViewController.swift
//  Flix
//
//  Created by thomas mcnutt on 10/4/21.
//

import UIKit
import AlamofireImage

class SuperHeroDetailViewController: UIViewController {
    //outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backDropView: UIImageView!
    
    //variables
    var movie: [String: Any]!
    
    let baseURL = "https://image.tmdb.org/t/p/"
    let imageSizePoster = "w185"
    let imageSizeBackDrop = "w780"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + imageSizePoster + posterPath)!
        posterView.af.setImage(withURL: posterURL)
        
        let backDropViewPath = movie["backdrop_path"] as! String
        let backDropURL = URL(string: baseURL + imageSizeBackDrop + backDropViewPath)!
        backDropView.af.setImage(withURL: backDropURL)
        
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
