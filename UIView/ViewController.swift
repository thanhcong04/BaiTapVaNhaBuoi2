//
//  ViewController.swift
//  UIView
//
//  Created by Công on 10/23/20.
//  Copyright © 2020 Công. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!    
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    
    //Tạo mới 1 UIView bằng code
    let myView: UIView = {
    
        let xView = UIView()
        xView.backgroundColor = UIColor.black
        xView.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
        xView.layer.cornerRadius = xView.bounds.height/2
        xView.clipsToBounds = true//nhừng thằng view con bên trong mà thừa ra ngoài là ẩn đi phần thừa 
        return xView
        
    }()
    
    let myView2: UIView = {
    
        let xView = UIView()
        xView.backgroundColor = UIColor.purple
        xView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        //xView.layer.cornerRadius = xView.bounds.height/2
        return xView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white // Set màu cho background
        //Thay đổi kích thước của greenView
        greenView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        //Thay đổi kích thước của blueView
        blueView.frame = CGRect(x: 200 , y: 200, width: 100 , height: 200)
        //Thay đổi kích thước của redView
        redView.frame = CGRect(x: 200, y: 400, width: 300, height: 100)
        //Căn giữa redView với blueView
        redView.center.x = blueView.center.x
        
        print(blueView.bounds)
        
        //greenView.frame.origin.x = blueView.bounds.origin.y + 20
        // Độ trong suốt của view (chaạy từ 0 đến 1, nếu = 0 thì nó trong suốt)
        blueView.alpha = 0.3
        //Bo tròn viền góc của view
        blueView.layer.cornerRadius = 20
        
        //Thêm myView khởi tạo bên trên vào supperView
        view.addSubview(myView)
        myView.frame.origin.y = redView.frame.maxY + 20
        print(redView.frame.maxY)
        
        //nhét thằng myView2 vào trong thàng myView
        myView.addSubview(myView2)
    }


}

