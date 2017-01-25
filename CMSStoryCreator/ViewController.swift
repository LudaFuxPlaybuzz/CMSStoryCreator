//
//  ViewController.swift
//  CMSStoryCreator
//
//  Created by Luda Fux on 1/18/17.
//  Copyright © 2017 Playbuzz. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var containerView: UIView!
    
    var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        
        let config = WKWebViewConfiguration()
        
        self.webView = WKWebView(
            frame: self.containerView.bounds,
            configuration: config
        )
        self.view.insertSubview(self.webView!, at: 0)
        
//        self.webView?.navigationDelegate = self

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let htmlFile = Bundle.main.path(forResource: "pb", ofType: "html")
        let html = try? String(contentsOfFile: htmlFile!, encoding: String.Encoding.utf8)
        self.webView?.loadHTMLString(html!, baseURL: nil)
        
//        let dispatchTime = DispatchTime.now() + .seconds(60)
//        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
//            self.triggerLogin()
//        }
    }
    
////    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//    func triggerLogin()
//    {
//        print("login triggered")
////        print("observer is called \(keyPath!) - \(change)- \(context)")
//        if !webView.isLoading
//        {
//            print("Finished loading html")
//            webView.evaluateJavaScript("var options = {itemId:'guid', environment:'sandbox-5', redirtectAfterAction:true};var creator = new PbCreator(\"hello\",options);creator.initialize();") {(result, error) in
//                print("result - \(result). error - \(result)")
//            }
//        }
//    }
}
