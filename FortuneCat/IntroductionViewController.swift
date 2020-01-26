//
//  ViewController.swift
//  FortuneCat
//
//  Created by Eliza Maria Porto de Carvalho on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController, UIScrollViewDelegate {

  
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var pageViewController: UIPageControl!
    
    let imagesArray = ["image1", "image2"]
    var contentWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        pageViewController.numberOfPages = imagesArray.count
        
        for i in 0..<imagesArray.count {
            let imageView = UIImageView()
            imageView.image = UIImage(named: imagesArray[i])
            imageView.contentMode = .scaleToFill
           
            let xPos = CGFloat(i) * self.view.bounds.size.width
          
            imageView.frame = CGRect(x: xPos, y: 0, width: view.frame.size.width ,height: scrollView.frame.size.height)
            scrollView.contentSize.width = view.frame.size.width * CGFloat(i+1)
            scrollView.addSubview(imageView)
            print(scrollView.contentOffset)
        }
        
    }
    
   
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
        
        
        let page = scrollView.contentOffset.x/scrollView.frame.width
        pageViewController.currentPage = Int(page)
        
    }

}

