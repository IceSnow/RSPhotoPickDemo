//
//  ViewController.swift
//  RSPhotoPickDemo
//
//  Created by Roster on 20/10/2017.
//  Copyright © 2017 Roster. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func photoSelectAction(_ sender: Any) {
        
        PHPhotoLibrary.requestAuthorization { [weak self] (status) in
            
            if (status == .authorized) {
                
                if let imagePick = ImagePickerController(delegate: self) {
                    self?.present(imagePick, animated: true, completion: nil)
                }
            } else {
                self?.showSetting()
            }
        }
        
    }
    
    
    /// 显示配置
    func showSetting() {
        
        let alert = UIAlertController(title: "提示", message: "请在系统设置中打开“允许访问图片”，否则将无法获取相机的图片", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "取消", style: .default, handler: nil)
        let confirm = UIAlertAction(title: "去开启", style: .default) { (alertAction) in
            
            if let url = URL(string: UIApplicationOpenSettingsURLString) {
                UIApplication.shared.openURL(url)
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(confirm)
        present(alert, animated: true, completion: nil)
    }
    
}

// MARK: ImagePickerControllerDelgate
extension ViewController: ImagePickerControllerDelgate {
    
    func imagePickerController(_ imagePickerController: PhotoPickerController!, didFinished editedImage: UIImage!) {
        
        print("\(editedImage)")
        imagePickerController.dismiss(animated: true, completion: nil)
    }
    
    
}

