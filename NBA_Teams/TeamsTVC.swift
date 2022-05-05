//
//  TeamsTVC.swift
//  NBA_Teams
//
//  Created by Ranula Ranatunga on 2022-05-04.
//

import UIKit

class TeamsTVC: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    
    private var urlString: String = ""
    
    
    private func updateUI(TeamMemberProfile: String?, TeamMemberName: String?, MemeberNickName: String?, TeamCode: String?) {
        
        self.profileImage.image = TeamMemberProfile as String?
        self.nameLabel.text = TeamMemberName
        self.nickNameLabel.text = MemeberNickName
        self.codeLabel.text = TeamCode
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
        
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
