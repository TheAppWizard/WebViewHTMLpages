//
//  ViewController.swift
//  WebViewHTMLpages
//
//  Created by Shreyas Vilaschandra Bhike on 27/08/20.
//  Copyright © 2020 Shreyas Vilaschandra Bhike. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        load local html file // Your Custom HTML page //
        let url = Bundle.main.url(forResource: "example", withExtension: "html", subdirectory: "local_html")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


