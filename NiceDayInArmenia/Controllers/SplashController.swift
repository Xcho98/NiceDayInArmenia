//
//  SplashController.swift
//  NiceDayInArmenia
//
//  Created by XchoBeglaryan on 14.06.21.
//

import UIKit

class SplashController: UIViewController {

    @IBOutlet weak var imageErevan: UIImageView!
   @IBOutlet weak var textLabel: UILabel!
    var text = "Մաղթում ենք հաճելի օր"
    override func viewDidLoad() {
        super.viewDidLoad()

        self.perform(#selector(goToLogin), with: nil, afterDelay: 3)
        animation()
        // Do any additional setup after loading the view.
    }
    @objc func goToLogin() {
        let login: Void = performSegue(withIdentifier: "LoginController", sender: nil)
        
        return login
    }
    func animation() {
            var index = 0.0
            
            for char in text {
                
                Timer.scheduledTimer(withTimeInterval: 0.05 * index, repeats: false) { timer in
                    
                    self.textLabel.text?.append(char)
                }
                index += 1
            }
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
