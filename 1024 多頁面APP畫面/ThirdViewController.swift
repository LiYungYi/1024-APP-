//
//  ThirdViewController.swift
//  1024 多頁面APP畫面
//
//  Created by 泳逸 李 on 2017/10/30.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var adoptInfoTableView: UITableView!
    
    var objects = [adoptInfo]()
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = adoptInfoTableView.dequeueReusableCell(withIdentifier: "adoptCell", for: indexPath)
        cell.textLabel?.text = objects[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "全台各領養平台資訊"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adoptInfoTableView.dataSource = self
        adoptInfoTableView.delegate = self
        
        let info1 = adoptInfo(title: "動物平權促進會", link: "http://www.taeanimal.org.tw/child-animal/?gclid=EAIaIQobChMImc-OspSW1wIVDQQqCh2SxwsmEAAYAiAAEgKyPvD_BwE")
        let info2 = adoptInfo(title: "台灣動物緊急救援小組", link: "http://www.savedogs.org/?gclid=EAIaIQobChMI2Pz47sKW1wIViqFoCh2fPAs1EAAYBCAAEgIStPD_BwE")
        let info3 = adoptInfo(title: "全國推廣動物認養平台", link: "http://animal-adoption.coa.gov.tw/")
        let info4 = adoptInfo(title: "流浪動物花園", link: "http://www.cathome.org.tw/phpbb2/i_love_animals.php?code=photostickers&tmpl=7")
        let info5 = adoptInfo(title: "台灣認養地圖", link: "http://www.meetpets.org.tw/")
        let info6 = adoptInfo(title: "寵寵微積認養區", link: "https://34c.cc/index.php?yan=class&class_id=2")
        let info7 = adoptInfo(title: "106TV 寵物認養", link: "http://www.106tv.com/publish_data/publishO01TO")
        let info8 = adoptInfo(title: "飛格寵物家族", link: "http://flycall.com/bbs/index.php")
        let info9 = adoptInfo(title: "寵物領養ZONE ONE ZONE", link: "http://pet.zoneonezone.com/petadopt/search")
        let info10 = adoptInfo(title: "Pet House", link: "http://www.pethouse.com.tw/index.php?sn=505&s=2")
        
        objects.append(info1)
        objects.append(info2)
        objects.append(info3)
        objects.append(info4)
        objects.append(info5)
        objects.append(info6)
        objects.append(info7)
        objects.append(info8)
        objects.append(info9)
        objects.append(info10)

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adoptDetail"{
            let dvc = segue.destination as? AdoptInfoViewController
            if let selectedRow = adoptInfoTableView.indexPathForSelectedRow?.row{
            dvc?.infoFromAdoptInfo = objects[selectedRow].link
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
