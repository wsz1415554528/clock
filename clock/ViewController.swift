//
//  ViewController.swift
//  clock
//
//  Created by s20161104602 on 2018/11/28.
//  Copyright © 2018 s20161104602. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    //初始化秒表
    var Counter = 0.0
    var Timer = Timer()
    //定义一个bool值
    var IsPlaying = false
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        timeLabel.text = String(Counter)
        super.viewDidLoad()
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBAction func resetButtonDidTouch(sender: AnyObject) {
        Timer.invalidate()
        IsPlaying = false
        Counter = 0
        timeLabel.text = String(Counter)
        playBtn.isEnabled = true
        pauseBtn.isEnabled = true
    }
    
    @IBAction func playButtonDidTouch(sender: AnyObject) {
        if(IsPlaying) {
            return
        }
        playBtn.isEnabled = false
        pauseBtn.isEnabled = true
        <span; type="white-space:pre">; </span>//启动计时器方法
        Timer = Timer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
        IsPlaying = true
    }
    
    @IBAction func pauseButtonDidTouch(sender: AnyObject) {
        
        playBtn.isEnabled = true
        pauseBtn.isEnabled = false
        do {span; style="white-space:pre"}; <span>
      
        Timer.invalidate()
        IsPlaying = false
        
    }
    
    func UpdateTimer() {
        Counter = Counter + 0.1
        timeLabel.text = String(format: "%.1f", Counter)
    }
    
    
}
