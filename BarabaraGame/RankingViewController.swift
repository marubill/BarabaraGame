//
//  RankingViewController.swift
//  BarabaraGameTests
//
//  Created by 中山弘瑛 on 2018/04/12.
//  Copyright © 2018年 中山弘瑛. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel! //1位のスコアを表示するラベル
    @IBOutlet var rankingLabel2: UILabel! //2位のスコアを表示するラベル
    @IBOutlet var rankingLabel3: UILabel! //3位のスコアを表示するラベル
    
    let defaults: UserDefaults = UserDefaults.standard // スコアの保存をするための変数

    override func viewDidLoad() {
        rankingLabel1.text = String(defaults.integer(forKey: "score1"))
        rankingLabel2.text = String(defaults.integer(forKey: "score2"))
        rankingLabel3.text = String(defaults.integer(forKey: "score3"))
        super.viewDidLoad()
        
    }

    @IBAction func toTop(){
            self.dismiss(animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    

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
