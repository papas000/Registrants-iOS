//
//  ViewController.swift
//  WebView
//
//  Created by Au Pair on 6/7/20.
//  Copyright © 2020 papas000. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://papas000.eu.pythonanywhere.com")!
        webView.load(URLRequest(url: url))
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
//    @IBAction func reloadView() {
//        webView.reload()
//    }
//
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        title = webView.title
//    }
}

