//
//  GDHomeViewController.m
//  GDWeibo
//
//  Created by 锋之韵 on 16/7/17.
//  Copyright (c) 2016年 fz. All rights reserved.
//

#import "GDHomeViewController.h"
#import "UIBarButtonItem+GD.h"
#import "GDTitleView.h"

typedef enum {
    GDHomeViewArrowTypeUp,
    GDHomeViewArrowTypeDown,
} GDHomeViewArrowType;


@interface GDHomeViewController ()

@property (nonatomic, assign) GDHomeViewArrowType arrowType;

@end

@implementation GDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 添加左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithimageName:@"navigationbar_friendsearch_os7" highImageName:@"navigationbar_friendsearch_highlighted_os7" target:self action:@selector(friendsearch)];
    // 添加右边按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithimageName:@"navigationbar_pop_os7" highImageName:@"navigationbar_pop_highlighted_os7" target:self action:@selector(pop)];
    // 添加中间按钮
    GDTitleView *button = [GDTitleView buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"navigationbar_arrow_down_os7"] forState:UIControlStateNormal];
    self.arrowType = GDHomeViewArrowTypeDown;
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    button.bounds = CGRectMake(0, 0, 70, 40);
    [button setTitle:@"首页" forState:UIControlStateNormal];
    self.navigationItem.titleView = button;
    
}

- (void)clickBtn:(GDTitleView *)btn
{
    if (self.arrowType == GDHomeViewArrowTypeUp)
    {
        [btn setImage:[UIImage imageNamed:@"navigationbar_arrow_down_os7"] forState:UIControlStateNormal];
        self.arrowType = GDHomeViewArrowTypeDown;
    } else {
        [btn setImage:[UIImage imageNamed:@"navigationbar_arrow_up_os7"] forState:UIControlStateNormal];
        self.arrowType = GDHomeViewArrowTypeUp;
    }
}

- (void)pop
{
    
}

- (void)friendsearch
{
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
