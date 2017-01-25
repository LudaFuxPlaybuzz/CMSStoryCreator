//
//  ViewController.swift
//  CMSStoryCreator
//
//  Created by Luda Fux on 1/18/17.
//  Copyright © 2017 Playbuzz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let htmlFile = Bundle.main.path(forResource: "pb", ofType: "html")
        let html = try? String(contentsOfFile: htmlFile!, encoding: String.Encoding.utf8)
        webView.loadHTMLString(html!, baseURL: nil)
    }
    
    func webViewDidFinishLoad(_ webView : UIWebView) {
        let _ = webView.stringByEvaluatingJavaScript(from: "var options = {itemId:'guid', environment:'sandbox-5', redirtectAfterAction:true};var creator = new PbCreator(\"hello\",options);creator.initialize();")
    }
}

