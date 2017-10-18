//
//  CodeOnlyViewController.swift
//  MarkdownViewDemo
//
//  Created by WhatsXie on 2017/10/18.
//  Copyright © 2017年 WhatsXie. All rights reserved.
//

import UIKit
import MarkdownView

class CodeOnlyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createMarkdownView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func createMarkdownView() {
        let mdView = MarkdownView()
        view.addSubview(mdView)
        mdView.frame = CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height)
        
        let path = Bundle.main.path(forResource: "sample", ofType: "md")!
        let url = URL(fileURLWithPath: path)
        let markdown = try! String(contentsOf: url, encoding: String.Encoding.utf8)
        mdView.load(markdown: markdown, enableImage: true)
    }

}
