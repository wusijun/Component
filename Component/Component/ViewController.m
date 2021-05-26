//
//  ViewController.m
//  Component
//
//  Created by 吴四军 on 5/25/21.
//

#import "ViewController.h"
#import <SubModule1/Person.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, strong) NSMutableArray *pushArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /// 假设这个地方的代码在其他的地方使用，未必在主工程
    Person *p = [[Person alloc] init];
    [p noonTime];
    
    
    ////
    
    [self.dataSource addObject:@"Advanced Animation Tricks"];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    [self.pushArr addObject:@"AdvanceAnimationTricksViewController"];
    
    
    
    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] init];
    }
    cell.textLabel.text = [self.dataSource objectAtIndex:indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *className = [self.pushArr objectAtIndex:indexPath.row];
    UIViewController *controller = [[NSClassFromString(className) alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}


- (NSMutableArray *)pushArr
{
    if (!_pushArr)
    {
        _pushArr = [NSMutableArray array];
    }
    return _pushArr;
}

- (NSMutableArray *)dataSource
{
    if (!_dataSource)
    {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}
@end
