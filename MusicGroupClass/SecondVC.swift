//
//  SecondVC.swift
//  MusicGroupClass
//
//  Created by ABDULLAH GÜNAN on 28.03.2024.
//

import UIKit

class SecondVC: UIViewController {
 
    var selectMember : Musician?
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ageText: UILabel!
    @IBOutlet weak var memberText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectMember?.image
        memberText.text = selectMember?.name
        ageText.text = selectMember?.age


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
