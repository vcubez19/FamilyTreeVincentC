//
//  ClickedNameViewController.swift
//  FamilyTree
//
//  Created by Vincent Cubit on 9/15/21.
//


import UIKit


class ClickedNameViewController: UIViewController {
    
    
    //MARK: Properties
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myImageLabel: UILabel!
    
    var image = ""
    var label = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.myImageView.image = UIImage(named: image)
        self.myImageLabel.text = label

        
    }
    

}
