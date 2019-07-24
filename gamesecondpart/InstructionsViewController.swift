//
//  InstructionsViewController.swift
//  gamesecondpart
//
//  Created by Saket Chinchalikar on 7/24/19.
//  Copyright © 2019 Lalit. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

      
        // Do any additional setup after loading the view.
        let url = URL (string:"https://www.google.com")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
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
