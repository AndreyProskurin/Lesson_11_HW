//
//  CarTableVC.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 18.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarTableVC.h"
#import "BaseCar.h"
#import "CarClassA.h"
#import "CarClassB.h"
#import "CarClassC.h"
#import "CarClassD.h"
#import "CarClassE.h"
#import "CarClassF.h"

static NSString *const carCellIdentifier = @"carCell";

@interface CarTableVC ()

@property (nonatomic, strong) CarClassA *carsClassModelA;
@property (nonatomic, strong) CarClassB *carsClassModelB;
@property (nonatomic, strong) CarClassC *carsClassModelC;
@property (nonatomic, strong) CarClassD *carsClassModelD;
@property (nonatomic, strong) CarClassE *carsClassModelE;
@property (nonatomic, strong) CarClassF *carsClassModelF;

@property (nonatomic, strong) NSArray *allCarsArray;

@end

@implementation CarTableVC



- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.carsClassModelA = (CarClassA*)[CarClassA car];
//    self.carsClassModelB = [[CarClassB alloc] init];
//    self.carsClassModelC = [[CarClassC alloc] init];
//    self.carsClassModelD = [[CarClassD alloc] init];
//    self.carsClassModelE = [[CarClassE alloc] init];
//    self.carsClassModelF = [[CarClassF alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSArray*)allCarsArray {
    if (!_allCarsArray) {
        _allCarsArray = @[[CarClassA carNamesArray]];
//                          , self.carsClassModelB.carsClassB, self.carsClassModelC.carsClassC,
//                           self.carsClassModelD.carsClassD, self.carsClassModelE.carsClassE, self.carsClassModelF.carsClassF];
    }
    return _allCarsArray;
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 24.0f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.allCarsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:carCellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:carCellIdentifier];
    }
    
    BaseCar *car = [[self.allCarsArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.textLabel.text = [car descripeTheCar];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)cell {
//    ViewController *vc = [segue destinationViewController];
    
}


@end
