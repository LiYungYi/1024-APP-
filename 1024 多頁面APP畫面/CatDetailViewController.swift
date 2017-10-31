//
//  CatDetailViewController.swift
//  1024 多頁面APP畫面
//
//  Created by 泳逸 李 on 2017/10/24.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class CatDetailViewController: UIViewController {
    
    @IBOutlet weak var catIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var catWebView: UIWebView!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    var info1FromCatMenu:String?
    var info2FromCatMenu:String?
    var info3FromCatMenu:String?
    var info4FromCatMenu:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let info1 = info1FromCatMenu{
        if let url = URL(string: info1){
        let request = URLRequest(url: url)
        catWebView.loadRequest(request)
            }
        }
        if let info2 = info2FromCatMenu{
            if let url = URL(string: info2){
                let request = URLRequest(url: url)
                catWebView.loadRequest(request)
            }
        }
        
        if let info3 = info3FromCatMenu{
            if let url = URL(string: info3){
                let request = URLRequest(url: url)
                catWebView.loadRequest(request)
            }
        }
        if let info4 = info3FromCatMenu{
            if let url = URL(string: info4){
                let request = URLRequest(url: url)
                catWebView.loadRequest(request)
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
