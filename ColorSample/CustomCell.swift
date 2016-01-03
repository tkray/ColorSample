import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var label : UILabel!
    @IBOutlet var cellColor : UIView!
    @IBOutlet var detailLabel : UILabel!
    
    func setCell(name : String, color : UIColor, detail: String) {
        
        label.text = name
        cellColor.backgroundColor = color
        detailLabel.text = detail
    }
}