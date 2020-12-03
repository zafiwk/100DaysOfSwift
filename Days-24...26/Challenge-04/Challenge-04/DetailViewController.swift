//
//  DetailViewController.swift
//  Challenge-04
//
//  Created by Florentino Lopez on 02/12/20.
//

import UIKit
import WebKit

class DetailViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    var progresoVista: UIProgressView!
    var sitiosWeb = ["oracle.com", "aws.amazon.com","postgresql.org", "ibm.com"]
    var seleccionaSitioWeb: String?
    var atras: UIBarButtonItem?
    var adelante: UIBarButtonItem?
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let spacio = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let actualizar = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        self.atras = UIBarButtonItem(title: "Atrás", style: .plain, target: webView, action: #selector(webView.goBack))
        self.atras?.isEnabled = false
        self.adelante = UIBarButtonItem(title: "Adelante", style: .plain, target: webView, action: #selector(webView.goForward))
        self.adelante?.isEnabled = false
        
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Abrir...", style: .plain, target: self, action: #selector(openTapped))
        
        if let sitioWeb = seleccionaSitioWeb {
            let link = URL(string: "https://" + sitioWeb)!
            webView.load(URLRequest(url: link))
        }
        webView.allowsBackForwardNavigationGestures = true
        
        progresoVista = UIProgressView(progressViewStyle: .default)
        progresoVista.sizeToFit()
        let progresoButton = UIBarButtonItem(customView: progresoVista)
        
        toolbarItems = [spacio, actualizar, progresoButton, spacio, atras!, adelante!]
        navigationController?.isToolbarHidden = false
        
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
    }
    
    @objc func openTapped() {
        let ac = UIAlertController(title: "Abrir Página...", message: nil, preferredStyle: .actionSheet)
        for sitioWeb in sitiosWeb {
            ac.addAction(UIAlertAction(title: sitioWeb, style: .default, handler: openPage))
        }
        ac.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = self.navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }

    func openPage(action: UIAlertAction) {
        guard let actionTitle = action.title else { return }
        guard let url = URL(string: "https://" + actionTitle) else { return }
        webView.load(URLRequest(url: url))
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        self.atras?.isEnabled = webView.canGoBack
        self.adelante?.isEnabled = webView.canGoForward
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progresoVista.progress = Float(webView.estimatedProgress)
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let url = navigationAction.request.url
        
        if let host = url?.host {
            for sitioWeb in sitiosWeb {
                if host.contains("twitter.com") {
                    let ac = UIAlertController(title: "Bloqueado", message: "URL no permitida", preferredStyle: .alert)
                    ac.addAction(UIAlertAction(title: "De acuerdo", style: .default, handler: nil))
                    present(ac, animated: true)
                    decisionHandler(.cancel)
                    return
                } else if host.contains(sitioWeb)  {
                    decisionHandler(.allow)
                    return
                }
            }
        }
        decisionHandler(.cancel)
    }
}
