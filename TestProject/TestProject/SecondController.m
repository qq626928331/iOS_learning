//
//  SecondController.m
//  TestProject
//
//  Created by dxl on 2019/7/20.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import "SecondController.h"
#import "UserinfoViewController.h"

@interface SecondController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *zhangsan;
@property (nonatomic, strong)NSArray *cellArray;
@property (nonatomic, strong)NSArray *linkArray;
@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor clearColor];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *backButton =[[UIButton alloc] initWithFrame:CGRectMake(50, 50, 60, 30)];
    backButton.backgroundColor=[UIColor redColor];
    [backButton setTitle:@"戻る" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backToMainView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    // tableview生成
    _zhangsan = [[UITableView alloc] initWithFrame:CGRectMake(100, 100, 200, 200) style:UITableViewStyleGrouped];
    [self.view addSubview:_zhangsan];
    [_zhangsan setDelegate:self];
    [_zhangsan setDataSource:self];
    
    _cellArray = [NSArray arrayWithObjects:@"aa",@"bb",@"cc",@"dd",@"ee", nil];
    _linkArray = [NSArray arrayWithObjects:@"abc",@"dssd",@"wwww",@"rrrr",@"kkk", nil];
    
}
- (void)backToMainView:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hehe"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"hehe"];
    }
    [cell.textLabel setText:[_cellArray objectAtIndex:indexPath.row % 5]];
    [cell.detailTextLabel setText:@"im little text"];
    
    [cell.textLabel setTextAlignment:NSTextAlignmentLeft];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",  [_linkArray objectAtIndex:indexPath.row % 5]);
    
//    UserinfoViewController *userinfoVC = [[UserinfoViewController alloc] init];
//    [self presentViewController:userinfoVC animated:YES completion:nil];
    
}





- (void)dealloc
{
    [_zhangsan removeFromSuperview];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
