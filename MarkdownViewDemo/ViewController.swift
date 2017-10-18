//
//  ViewController.swift
//  MarkdownViewDemo
//
//  Created by WhatsXie on 2017/10/18.
//  Copyright © 2017年 WhatsXie. All rights reserved.
//

import UIKit
import MarkdownView

class ViewController: UIViewController {
    @IBOutlet weak var markdownViewXIB: MarkdownView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createMarkdownViewXIB()
    }
    func createMarkdownViewXIB() {
        let path = Bundle.main.path(forResource: "sample", ofType: "md")!
        let url = URL(fileURLWithPath: path)
        let markdown = try! String(contentsOf: url, encoding: String.Encoding.utf8)
        
        markdownViewXIB.load(markdown: markdown, enableImage: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

