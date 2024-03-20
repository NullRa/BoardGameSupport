//
//  AbsViewController.swift
//  BoardGameSupport
//
//  Created by 禾智 on 2024/3/20.
//

import UIKit
import RxSwift
import UIKit
import RxRelay
import SnapKit
import RxCocoa

class AbsViewController: UIViewController {

    lazy var disposBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        loadUI()
        binding()
    }
    
    func loadUI() {}

    func binding() {}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
