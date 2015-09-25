//
//  IntroViewController.swift
//  CarouselDemo
//
//  Created by Gilbert Guerrero on 9/22/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var IntroImage: UIImageView!
    
    //Tiles
    @IBOutlet weak var Tile1: UIImageView!
    @IBOutlet weak var Tile2: UIImageView!
    @IBOutlet weak var Tile3: UIImageView!
    @IBOutlet weak var Tile4: UIImageView!
    @IBOutlet weak var Tile5: UIImageView!
    @IBOutlet weak var Tile6: UIImageView!
    
    var tiles: [UIImageView] = []
    var tileRotateTo: [CGFloat] = []
    var tileOriginalX: [CGFloat] = []
    var tileOriginalY: [CGFloat] = []
    var tileNewX: [CGFloat] = []
    var tileNewY: [CGFloat] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        scrollView.contentSize = IntroImage.image!.size
        
        scrollView.delegate = self

        tiles.append(Tile1)
        tiles.append(Tile2)
        tiles.append(Tile3)
        tiles.append(Tile4)
        tiles.append(Tile5)
        tiles.append(Tile6)
        
        tileRotateTo = [-10, -15, 10, 10, 5, -15]
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        for i in 0...5 {
            
            tileOriginalX.append(tiles[i].center.x)
            tileOriginalY.append(tiles[i].center.y)
            
        }
        
        tileNewX = [
            CGFloat(30),
            screenWidth - 40,
            screenWidth - 50,
            screenWidth/2,
            CGFloat(50),
            screenWidth/2
        ]

        tileNewY = [
            screenHeight - 20,
            screenHeight - 20,
            screenHeight - 100,
            screenHeight - 20,
            screenHeight - 100,
            screenHeight - 100
        ]
        
        for i in 0...5 {
            tiles[i].transform = CGAffineTransformMakeRotation(CGFloat(tileRotateTo[i] * CGFloat(M_PI) / 180))
            tiles[i].center.x = tileNewX[i]
            tiles[i].center.y = tileNewY[i]
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls

        var y = scrollView.contentOffset.y
        print(y)
        
        for i in 0...5 {
            tiles[i].transform = CGAffineTransformMakeRotation(CGFloat((1 - y/568) * tileRotateTo[i] * CGFloat(M_PI) / 180))
        }

//        Tile1.center.y = 

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
