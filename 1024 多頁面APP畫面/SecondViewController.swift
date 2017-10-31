//
//  SecondViewController.swift
//  1024 多頁面APP畫面
//
//  Created by 泳逸 李 on 2017/10/24.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var objects1 = [shortHairCatsItem]()
    var objects2 = [mediumHairCatsItem]()
    var objects3 = [longHairCatsItem]()
    var objects4 = [moreCatItem]()

    @IBOutlet weak var catMenuTableView: UITableView!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return objects1.count
        }else if section == 1{
            return objects2.count
        }else if section == 2{
            return objects3.count
        }else{
            return objects4.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catCell", for: indexPath)
        if indexPath.section == 0{
        cell.textLabel?.text = objects1[indexPath.row].title
            if indexPath.row == 0{
        cell.imageView?.image = UIImage(named: "cat1")
            }else if indexPath.row == 1{
        cell.imageView?.image = UIImage(named: "cat2")
            }else if indexPath.row == 2{
        cell.imageView?.image = UIImage(named: "cat3")
            }else if indexPath.row == 3{
        cell.imageView?.image = UIImage(named: "cat4")
            }else if indexPath.row == 4{
        cell.imageView?.image = UIImage(named: "cat5")
            }

        }else if indexPath.section == 1{
        cell.textLabel?.text = objects2[indexPath.row].title
            if indexPath.row == 0{
                cell.imageView?.image = UIImage(named: "cat6")
            }else if indexPath.row == 1{
                cell.imageView?.image = UIImage(named: "cat7")
            }else if indexPath.row == 2{
                cell.imageView?.image = UIImage(named: "cat8")
            }else if indexPath.row == 3{
                cell.imageView?.image = UIImage(named: "cat9")
            }else if indexPath.row == 4{
                cell.imageView?.image = UIImage(named: "cat10")
            }
            
        }else if indexPath.section == 2{
        cell.textLabel?.text = objects3[indexPath.row].title
            if indexPath.row == 0{
                cell.imageView?.image = UIImage(named: "cat11")
            }else if indexPath.row == 1{
                cell.imageView?.image = UIImage(named: "cat12")
            }else if indexPath.row == 2{
                cell.imageView?.image = UIImage(named: "cat13")
            }else if indexPath.row == 3{
                cell.imageView?.image = UIImage(named: "cat14")
            }else if indexPath.row == 4{
                cell.imageView?.image = UIImage(named: "cat15")
            }
        }else{
            cell.textLabel?.text = objects4[indexPath.row].title
            cell.imageView?.image = UIImage(named: "")

        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catMenuTableView.delegate = self
        catMenuTableView.dataSource = self
        
        let cat1 = shortHairCatsItem(title: "阿比西尼亞貓", link: "https://zh.wikipedia.org/wiki/%E9%98%BF%E6%AF%94%E8%A5%BF%E5%B0%BC%E4%BA%9A%E7%8C%AB")
        let cat2 = shortHairCatsItem(title: "美國短毛貓", link: "https://zh.wikipedia.org/wiki/%E7%BE%8E%E5%9B%BD%E7%9F%AD%E6%AF%9B%E7%8C%AB")
        let cat3 = shortHairCatsItem(title: "孟加拉貓", link: "https://zh.wikipedia.org/wiki/%E5%AD%9F%E5%8A%A0%E6%8B%89%E8%B2%93")
        let cat4 = shortHairCatsItem(title: "孟買貓", link: "https://zh.wikipedia.org/wiki/%E5%AD%9F%E8%B2%B7%E8%B2%93")
        let cat5 = shortHairCatsItem(title: "英國短毛貓", link: "https://zh.wikipedia.org/wiki/%E8%8B%B1%E5%9B%BD%E7%9F%AD%E6%AF%9B%E7%8C%AB")
        
        objects1.append(cat1)
        objects1.append(cat2)
        objects1.append(cat3)
        objects1.append(cat4)
        objects1.append(cat5)
        
        let cat6 = mediumHairCatsItem(title: "西伯利亞貓", link: "https://zh.wikipedia.org/wiki/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9E%E8%B2%93")
        let cat7 = mediumHairCatsItem(title: "土耳其安哥拉貓", link: "https://zh.wikipedia.org/wiki/%E5%9C%9F%E8%80%B3%E5%85%B6%E5%AE%89%E5%93%A5%E6%8B%89%E8%B2%93")
        let cat8 = mediumHairCatsItem(title: "土耳其梵貓", link: "https://zh.wikipedia.org/wiki/%E5%9C%9F%E8%80%B3%E5%85%B6%E6%A2%B5%E8%B2%93")
        let cat9 = mediumHairCatsItem(title: "日本短尾貓", link: "https://zh.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E7%9F%AD%E5%B0%BE%E8%B2%93")
        let cat10 = mediumHairCatsItem(title: "美國捲耳貓", link: "https://zh.wikipedia.org/wiki/%E7%BE%8E%E5%9C%8B%E5%8F%8D%E8%80%B3%E8%B2%93")
        
        objects2.append(cat6)
        objects2.append(cat7)
        objects2.append(cat8)
        objects2.append(cat9)
        objects2.append(cat10)
        
        let cat11 = longHairCatsItem(title: "喜馬拉雅貓", link: "https://zh.wikipedia.org/wiki/%E5%96%9C%E9%A6%AC%E6%8B%89%E9%9B%85%E8%B2%93")
        let cat12 = longHairCatsItem(title: "緬因貓", link: "https://zh.wikipedia.org/wiki/%E7%B7%AC%E5%9B%A0%E8%B2%93")
        let cat13 = longHairCatsItem(title: "挪威森林貓", link: "https://zh.wikipedia.org/wiki/%E6%8C%AA%E5%A8%81%E6%A3%AE%E6%9E%97%E8%B2%93")
        let cat14 = longHairCatsItem(title: "波斯貓", link: "https://zh.wikipedia.org/wiki/%E6%B3%A2%E6%96%AF%E8%B2%93")
        let cat15 = longHairCatsItem(title: "索馬利貓", link: "https://zh.wikipedia.org/wiki/%E7%B4%A2%E9%A6%AC%E5%88%A9%E8%B2%93")
        
        objects3.append(cat11)
        objects3.append(cat12)
        objects3.append(cat13)
        objects3.append(cat14)
        objects3.append(cat15)
        
        let moreCat = moreCatItem(title: "更多圖鑑及種類", link: "https://zh.wikipedia.org/wiki/%E5%AE%B6%E8%B2%93%E5%93%81%E7%A8%AE%E5%88%97%E8%A1%A8")
        objects4.append(moreCat)
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "短毛貓"
        }else if section == 1{
            return "半長毛貓"
        }else if section == 2{
            return "長毛貓"
        }else{
            return "其他相關資訊"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "catDetail"{
            let dvc = segue.destination as? CatDetailViewController
            if let selectedSetction = catMenuTableView.indexPathForSelectedRow?.section{
                if selectedSetction == 0{
                    if let selectedRow1 = catMenuTableView.indexPathForSelectedRow?.row{
                        dvc?.info1FromCatMenu = objects1[selectedRow1].link
                    }
                    
                }else{
                    if selectedSetction == 1{
                        if let selectedRow2 = catMenuTableView.indexPathForSelectedRow?.row{
                            dvc?.info2FromCatMenu = objects2[selectedRow2].link
                        }
                }else{
                    if selectedSetction == 2{
                        if let selectedRow3 = catMenuTableView.indexPathForSelectedRow?.row{
                                dvc?.info3FromCatMenu = objects3[selectedRow3].link
                                
                            }
                }else{
                    if selectedSetction == 3{
                            if let selectedRow4 = catMenuTableView.indexPathForSelectedRow?.row{
                                    dvc?.info3FromCatMenu = objects4[selectedRow4].link

                                }
                            }
                        }
                    }
                }
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

