//
//  FirstViewController.swift
//  Timer
//
//  Created by CuongVX-D1 on 6/14/19.
//  Copyright © 2019 CuongVX-D1. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    var timer: Timer? = nil
    var secondVC: SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTimer()
    }
    
    private func setupTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] (_) in
            var number = Float.random(in: 0...1) * 100
            number = round(number)
            
            if number == 100.0 {
                self?.label.text = "Done"
                self?.secondVC?.progress = "Done"
                self?.timer?.invalidate()
                return
            }
            
            let stringProgress = String(number) + "%"
            self?.label.text = stringProgress
            self?.progressView.progress = number
            self?.progressView.progressTintColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            self?.secondVC?.progress = stringProgress
        }
    }
    
    @IBAction func goToView2(_ sender: Any) {
        secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController
        navigationController?.pushViewController(secondVC!, animated: true)
    }
}

