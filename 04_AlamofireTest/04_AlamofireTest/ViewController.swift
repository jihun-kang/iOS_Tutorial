//
//  ViewController.swift
//  04_AlamofireTest
//
//  Created by a2big on 2018. 6. 16..
//  Copyright © 2018년 com.a2big. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        
        // The image to dowload
        let remoteImageURL = URL(string: "http://www.a2big.com/download/a2big/outsize_1.jpg")!
        // Use Alamofire to download the image
        Alamofire.request(remoteImageURL).responseData { (response) in
            if response.error == nil {
                print(response.result)
                // Show the downloaded image:
                if let data = response.data {
                    self.imageview.image = UIImage(data: data)
                    self.activityIndicator.stopAnimating()
                }
            }
        }
    
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

