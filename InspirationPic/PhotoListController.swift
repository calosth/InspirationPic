//
//  PhotoListController.swift
//  InspirationPic
//
//  Created by Carlos Linares on 21/3/15.
//  Copyright (c) 2015 Calosth. All rights reserved.
//

import UIKit

class PhotoListController: UITableViewController {
    
    let manager : PhotoManager = PhotoManager()
    var photos: [Photo]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        manager.getPhotos(["tag":"sunset","only":"Nature","image_size":"4","rpp":"100"])
            { (photos, error) -> () in
                self.photos = photos
                self.tableView.reloadData()
            
            }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        if let photo = photos{
            return photos.count
        }
        return 0

    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PhotoCelll", forIndexPath: indexPath) as PhotoCell
        cell.posterImageVIew.image = nil
        let photo = self.photos[indexPath.row]
        cell.cameraLabel.text = photo.camera
        cell.focalLengthLabel.text = photo.lens
        cell.shutterSpeedLabel.text = photo.shutterSpeed
        cell.isoLabel.text = photo.iso
//        cell.posterImageVIew.setImageWithUrl(NSURL(string: photo.imageurl!)!, placeHolderImage: nil)

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
