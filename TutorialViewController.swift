//
//  TutorialViewController.swift
//  CarouselDemo
//
//  Created by Gilbert Guerrero on 9/23/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var takeButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.contentSize = CGSize(width:1280, height: 568)

        scrollView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if page == 3 {
            
            UIView.animateWithDuration(0.4, animations: {

                self.takeButton.alpha = 1

                
            })
            
        } else {
            
            UIView.animateWithDuration(0.1, animations: {
                
                self.takeButton.alpha = 0
                
                
            })
            
        }
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
