//
//  HomeViewController.swift
//  BoardGameSupport
//
//  Created by 禾智 on 2024/3/20.
//

import UIKit

class HomeViewController: AbsViewController {
    
    private lazy var marvelbtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Marvel", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        return btn
    }()
    
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadUI(){
        self.view.addSubview(marvelbtn)
        
        marvelbtn.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.width.equalTo(200)
            $0.height.equalTo(100)
        }
    }

    override func binding() {
        marvelbtn.rx.tap
            .subscribe(onNext: { [weak self] _ in
                guard let self = self else {return}
                self.viewModel.input.tapMarvelBtn.onNext(())
            }).disposed(by: disposBag)
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
