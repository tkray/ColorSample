import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let colorNames = [
        "black", "darkGray", "lightGray", "white", "gray", "red", "green",
        "blue", "cyan", "yellow", "magenta", "orange", "purple", "brown", "clear"]
    
    let cellColors = [
        UIColor.blackColor(), UIColor.darkGrayColor(), UIColor.lightGrayColor(), UIColor.whiteColor(), UIColor.grayColor(),
        UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.cyanColor(), UIColor.yellowColor(),
        UIColor.magentaColor(), UIColor.orangeColor(), UIColor.purpleColor(), UIColor.brownColor(), UIColor.clearColor()
    ]
    
    let rgbColorNames = ["black", "gray", "white", "red", "blue", "yellow", "purple1", "purple2", "purple3"]
    
    let rgbCellColors = [
        UIColor(red: 0, green: 0, blue: 0, alpha: 1.0), UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0),
        UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), UIColor(red: 1.0, green: 0, blue: 0, alpha: 1.0),
        UIColor(red: 0, green: 0, blue: 1.0, alpha: 1.0), UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 1.0),
        UIColor(red: 1.0, green: 0, blue: 1.0, alpha: 1.0), UIColor(red: 1.0, green: 0, blue: 1.0, alpha: 0.5),
        UIColor(red: 1.0, green: 0, blue: 1.0, alpha: 0.2)
    ]
    
    let detailNames = [
        "red: 0, green: 0, blue: 0, alpha: 1.0", "red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0",
        "red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0", "red: 1.0, green: 0, blue: 0, alpha: 1.0",
        "red: 0, green: 0, blue: 1.0, alpha: 1.0", "red: 1.0, green: 1.0, blue: 0, alpha: 1.0",
        "red: 1.0, green: 0, blue: 1.0, alpha: 1.0", "red: 1.0, green: 0, blue: 1.0, alpha: 0.5",
        "red: 1.0, green: 0, blue: 1.0, alpha: 0.2"
    ]

    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return colorNames.count
        return rgbColorNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : CustomCell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! CustomCell
        
        // cell.setCell(colorNames[indexPath.row], color: cellColors[indexPath.row])
        
        cell.setCell(rgbColorNames[indexPath.row], color: rgbCellColors[indexPath.row], detail: detailNames[indexPath.row])
        
        return cell
    }

    // ステータスバーを非表示
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

