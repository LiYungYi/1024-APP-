//
//  AdoptInfoViewController.swift
//  1024 多頁面APP畫面
//
//  Created by 泳逸 李 on 2017/10/30.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class AdoptInfoViewController: UIViewController {
    
    @IBOutlet weak var adoptInfoActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var adoptWebView: UIWebView!
    
    var infoFromAdoptInfo:String?
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        adoptInfoActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        adoptInfoActivityIndicator.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let okInfo = infoFromAdoptInfo{
            if let url = URL(string: okInfo){
                let request = URLRequest(url: url)
                adoptWebView.loadRequest(request)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
