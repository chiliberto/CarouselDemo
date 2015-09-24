//
//  IntroViewController.swift
//  CarouselDemo
//
//  Created by Gilbert Guerrero on 9/22/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var IntroImage: UIImageView!
    
    //Tiles
    @IBOutlet weak var Tile1: UIImageView!
    @IBOutlet weak var Tile2: UIImageView!
    @IBOutlet weak var Tile3: UIImageView!
    @IBOutlet weak var Tile4: UIImageView!
    @IBOutlet weak var Tile5: UIImageView!
    @IBOutlet weak var Tile6: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        ScrollView.contentSize = IntroImage.image!.size

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
