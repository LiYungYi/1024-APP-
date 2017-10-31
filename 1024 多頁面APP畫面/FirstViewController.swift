//
//  FirstViewController.swift
//  1024 多頁面APP畫面
//
//  Created by 泳逸 李 on 2017/10/24.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dogMenutableView: UITableView!
    
    var objects1 = [smallDogsItem]()
    var objects2 = [mediumDogsItem]()
    var objects3 = [largeDogItem]()
    var objects4 = [moreDogItem]()
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "dogCell", for: indexPath)
        if indexPath.section == 0{
        cell.textLabel?.text = objects1[indexPath.row].title
            if indexPath.row == 0{
        cell.imageView?.image =  UIImage(named: "dog1")
            }else if indexPath.row == 1{
        cell.imageView?.image =  UIImage(named: "dog2")
            }else if indexPath.row == 2{
        cell.imageView?.image =  UIImage(named: "dog3")
            }else if indexPath.row == 3{
        cell.imageView?.image =  UIImage(named: "dog4")
            }else if indexPath.row == 4{
        cell.imageView?.image =  UIImage(named: "dog5")
            }
            
        }else if indexPath.section == 1{
        cell.textLabel?.text = objects2[indexPath.row].title
            if indexPath.row == 0{
        cell.imageView?.image = UIImage(named: "dog6")
            }else if indexPath.row == 1{
        cell.imageView?.image = UIImage(named: "dog7")
            }else if indexPath.row == 2{
        cell.imageView?.image = UIImage(named: "dog8")
            }else if indexPath.row == 3{
        cell.imageView?.image = UIImage(named: "dog9")
            }else if indexPath.row == 4{
        cell.imageView?.image = UIImage(named: "dog10")
            }
        }else if indexPath.section == 2{
        cell.textLabel?.text = objects3[indexPath.row].title
            if indexPath.row == 0{
                cell.imageView?.image = UIImage(named: "dog11")
            }else if indexPath.row == 1{
                cell.imageView?.image = UIImage(named: "dog12")
            }else if indexPath.row == 2{
                cell.imageView?.image = UIImage(named: "dog13")
            }else if indexPath.row == 3{
                cell.imageView?.image = UIImage(named: "dog14")
            }else if indexPath.row == 4{
                cell.imageView?.image = UIImage(named: "dog15")
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
        dogMenutableView.delegate = self
        dogMenutableView.dataSource = self
        
        let dog1 = smallDogsItem(title: "巴哥", link: "https://zh.wikipedia.org/wiki/%E5%B7%B4%E5%93%A5%E7%8A%AC")
        let dog2 = smallDogsItem(title: "柴犬", link: "https://zh.wikipedia.org/wiki/%E6%9F%B4%E7%8A%AC")
        let dog3 = smallDogsItem(title: "雪納瑞", link: "https://zh.wikipedia.org/wiki/%E9%9B%AA%E7%B4%8D%E7%91%9E")
        let dog4 = smallDogsItem(title: "蝴蝶犬", link: "https://zh.wikipedia.org/wiki/%E8%9D%B4%E8%9D%B6%E7%8A%AC")
        let dog5 = smallDogsItem(title: "米格魯", link: "https://zh.wikipedia.org/wiki/%E5%B0%8F%E7%8D%B5%E7%8A%AC")
        
        objects1.append(dog1)
        objects1.append(dog2)
        objects1.append(dog3)
        objects1.append(dog4)
        objects1.append(dog5)
        
        let dog6 = mediumDogsItem(title: "巴吉度", link: "https://zh.wikipedia.org/wiki/%E5%B7%B4%E5%90%89%E5%BA%A6%E7%8D%B5%E7%8A%AC")
        let dog7 = mediumDogsItem(title: "鬆獅犬", link: "https://zh.wikipedia.org/wiki/%E9%AC%86%E7%8D%85%E7%8A%AC")
        let dog8 = mediumDogsItem(title: "科基犬", link: "https://zh.wikipedia.org/wiki/%E5%A8%81%E7%88%BE%E6%96%AF%E6%9F%AF%E5%9F%BA%E7%8A%AC")
        let dog9 = mediumDogsItem(title: "牛頭梗", link: "https://zh.wikipedia.org/wiki/%E7%89%9B%E5%A4%B4%E3%B9%B4")
        let dog10 = mediumDogsItem(title: "沙皮犬", link: "https://zh.wikipedia.org/wiki/%E6%B2%99%E7%9A%AE%E7%8B%97")
        
        objects2.append(dog6)
        objects2.append(dog7)
        objects2.append(dog8)
        objects2.append(dog9)
        objects2.append(dog10)
        
        let dog11 = largeDogItem(title: "杜賓狗", link: "https://zh.wikipedia.org/wiki/%E6%9D%9C%E8%B3%93%E7%8A%AC")
        let dog12 = largeDogItem(title: "哈士奇", link: "https://zh.wikipedia.org/wiki/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9E%E9%9B%AA%E6%A9%87%E7%8A%AC")
        let dog13 = largeDogItem(title: "拳師犬", link: "https://zh.wikipedia.org/wiki/%E6%8B%B3%E5%B8%AB%E7%8A%AC")
        let dog14 = largeDogItem(title: "德國狼犬", link: "https://zh.wikipedia.org/wiki/%E5%BE%B7%E5%9C%8B%E7%89%A7%E7%BE%8A%E7%8A%AC")
        let dog15 = largeDogItem(title: "秋田犬", link: "https://zh.wikipedia.org/wiki/%E7%A7%8B%E7%94%B0%E7%8A%AC")
        
        objects3.append(dog11)
        objects3.append(dog12)
        objects3.append(dog13)
        objects3.append(dog14)
        objects3.append(dog15)
        
        let moreDog = moreDogItem(title: "更多圖鑑及種類", link: "https://zh.wikipedia.org/wiki/%E7%8A%AC%E7%A8%AE%E5%88%97%E8%A1%A8")
        objects4.append(moreDog)

    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "小型犬"
        }else if section == 1{
            return "中型犬"
        }else if section == 2{
            return "大型犬"
        }else{
            return "其他相關資訊"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dogDetail"{
            let dvc = segue.destination as? DogDetailViewController
            
            //還需要判斷section數字
    if let selectedSetction = dogMenutableView.indexPathForSelectedRow?.section{
        if selectedSetction == 0{
            if let selectedRow1 = dogMenutableView.indexPathForSelectedRow?.row{
                dvc?.info1FromDogMenu = objects1[selectedRow1].link
                }
        
            }else{
            if selectedSetction == 1{
            if let selectedRow2 = dogMenutableView.indexPathForSelectedRow?.row{
                dvc?.info2FromDogMenu = objects2[selectedRow2].link
                }
            }else{
                if selectedSetction == 2{
            if let selectedRow3 = dogMenutableView.indexPathForSelectedRow?.row{
                dvc?.info3FromDogMenu = objects3[selectedRow3].link
                }
                    
            }else{
                if selectedSetction == 3{
            if let selectedRow4 = dogMenutableView.indexPathForSelectedRow?.row{
                dvc?.info4FromDogMenu = objects4[selectedRow4].link
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

