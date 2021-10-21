//
//  DetailViewController.swift
//  Petify
//
//  Created by Andres Marquez on 2021-10-19.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?

    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem = detailItem else { return }

        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <style type="text/css">
        <!--
         .tab { margin-left: 20px; }
         .tab { margin-right: 20px; }
        -->
        </style>
        <body>
        <p class="tab", align = "justify">
        \(detailItem.body)
        </p>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
    }
}

