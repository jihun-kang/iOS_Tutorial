//
//  ViewController.swift
//  ImageViewTutorial
//
//  Created by a2big on 2018. 6. 7..
//  Copyright © 2018년 com.a2big. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var lblPage: UILabel!

    var imageList   = ["1.png","2.png","3.png","4.png"]
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pageInfo()
    }

    @IBAction func doLeft(_ sender: Any) {
        currentPage = currentPage - 1
        if( currentPage < 0 ){
            currentPage = imageList.count - 1
            print("left ", imageList[currentPage], imageList.count)
        }
        else{
            print("left ", imageList[currentPage], imageList.count)
        }
        
        pageInfo()

    }
    
    @IBAction func doRight(_ sender: Any) {
        currentPage = currentPage + 1
        if( currentPage < imageList.count ){
            print("right ", imageList[currentPage], imageList.count)
        }
        else{
            currentPage = 0
            print("right ", imageList[currentPage], imageList.count)
        }
        
        pageInfo()
        
    }
    
    func pageInfo(){
        let pageInfo = String(format: " %d / %d", currentPage + 1, imageList.count)
        lblPage.text = pageInfo
        self.showImage(imageName: imageList[currentPage])
    }
    
    func showImage(imageName: String){
        imgBackground.image = UIImage(named: imageName)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

