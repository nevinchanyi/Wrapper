//
//  MailViewModel.swift
//
//
//  Created by Kostiantyn Nevinchanyi on 3/26/23.
//

import SwiftUI
import MessageUI


class MailViewModel: ObservableObject {
    
    let mailViewController = MFMailComposeViewController()
    
    init() {
        mailViewController.delegate = self
        setup()
    }
    
    func setup() {
        guard MFMailComposeViewController.canSendMail() else {
            fatalError("Oops, MFMailComposeViewController cannot send email!")
            return
        }
        mailViewController.setToRecipients(["support@mileafy.com"])
        mailViewController.setSubject("Support")
        mailViewController.setMessageBody("Hello, World!", isHTML: false)
    }
}


extension MailViewModel: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult,
                               error: Error?) {
        print("Email sent with result:", result)
        controller.dismiss(animated: true)
    }
}
