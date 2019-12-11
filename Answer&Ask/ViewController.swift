//
//  ViewController.swift
//  Answer&Ask
//
//  Created by s20181102932 on 2019/12/4.
//  Copyright © 2019 wjx. All rights reserved.
//

import UIKit
var index:Int = 0
class ViewController: UIViewController {

    @IBOutlet weak var jdt: UIView!
    @IBOutlet weak var question: UITextField!
    @IBOutlet weak var jindu: UILabel!
    @IBOutlet weak var score: UILabel!

    var index = 0
    var que = ["马云退休了吗","英雄联盟手游要出了","买彩票容易中奖吗"]
    var anw = [1,1,0]
    var score1 = 0
    func check(answer:Int){
        if(answer==anw[index])
        {
            score1=score1+1
            score.text="得分：\(score1)"
            let alert = UIAlertController(title:"提示", message:"答对了", preferredStyle:.alert)
            present(alert,animated:true,completion:nil)
             alert.addAction(UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler: {action in }))
            //presentedViewController?.dismiss(animated: true, completion:nil)
        }
        else{
            let alert1 = UIAlertController(title:"提示", message:"答错了", preferredStyle:.alert)
            present(alert1,animated:true,completion:nil)
             alert1.addAction(UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler: {action in }))
            //presentedViewController?.dismiss(animated: true, completion:nil)
        }
    }
    func next()
    {
        index=index+1
        if(index==3)
        {
            index=0
            jdt.frame.size.width=0
            score.text="总得分:0"
        }
        question.text=que[index]
        jindu.text="进度\(index+1)/3"
        jdt.frame.size.width = (view.frame.width/3) + jdt.frame.size.width
        
    }
    
    @IBAction func tishikuang(_ sender: UIButton) {
        let alert3 = UIAlertController(title:"提示", message:"提示框", preferredStyle:.alert)
        alert3.addAction(UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler: {action in print("提示一次")}))
         alert3.addAction(UIAlertAction(title: "取消", style: UIAlertAction.Style.destructive, handler: {action in print("取消提示")}))
        present(alert3,animated:true,completion:nil)
        //presentedViewController?.dismiss(animated: true, completion:nil)
    }
    @IBAction func yes(_ sender: UIButton) {
        check(answer:1)
        next()
    }
    
    @IBAction func no(_ sender: UIButton) {
        check(answer:0)
        next()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        jdt.frame.size.width = (view.frame.width/3)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

