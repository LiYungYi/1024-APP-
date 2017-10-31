//
//  DogDetailViewController.swift
//  1024 多頁面APP畫面
//
//  Created by 泳逸 李 on 2017/10/24.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class DogDetailViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var dogWebView: UIWebView!
    
    @IBOutlet weak var dogIndicator: UIActivityIndicatorView!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    var info1FromDogMenu:String?
    var info2FromDogMenu:String?
    var info3FromDogMenu:String?
    var info4FromDogMenu:String?


    override func viewDidLoad() {
        super.viewDidLoad()
        dogWebView.delegate = self
        
        if let okInfo1 = info1FromDogMenu{
            if let url = URL(string: okInfo1){
            let request = URLRequest(url: url)
            dogWebView.loadRequest(request)
            }
        }
        if let okInfo2 = info2FromDogMenu{
            if let url = URL(string: okInfo2){
            let request = URLRequest(url: url)
            dogWebView.loadRequest(request)
            }
        }
        if let okInfo3 = info3FromDogMenu{
            if let url = URL(string: okInfo3){
            let request = URLRequest(url: url)
            dogWebView.loadRequest(request)
            }
        }
        if let okInfo4 = info4FromDogMenu{
            if let url = URL(string: okInfo4){
                let request = URLRequest(url: url)
                dogWebView.loadRequest(request)
            }
        }
    }
    

    func webViewDidStartLoad(_ webView: UIWebView) {
        dogIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        dogIndicator.stopAnimating()
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
