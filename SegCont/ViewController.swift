//
//  ViewController.swift
//  SegCont
//
//  Created by Brendon Zach on 2/24/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var segOut: UISegmentedControl!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        segOut
            .setTitleTextAttributes(titleTextAttributes, for:.normal)
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.red]
        segOut.setTitleTextAttributes(titleTextAttributes2, for:.selected)
        
        
        
    }

    @IBAction func segAction(_ sender: Any)
    {
        switch segOut.selectedSegmentIndex
        {
        case 0:
            helloLabel.text = "Hello!"
        case 1:
            helloLabel.text = "Привет!"
        case 2:
            helloLabel.text = "Hallo!"
        default:
            helloLabel.text = "Hello!"
         
            
            
        }
        
        
    }
    
    
}

