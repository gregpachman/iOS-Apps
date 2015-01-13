//
//  FriendDetailVC.m
//  GitHubFriends
//
//  Created by User on 1/8/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "FriendDetailVC.h"


//add property to this .h called "friendInfo"

//grab the request code from NewFriendVC.m

//change the url to https;//api.github.com/users/USERNAME/repos
//make username dynamic based on friendInfo(@'login');

//the return will be an NSArray of repos

//log the repos array



@interface FriendDetailVC () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation FriendDetailVC

{
    NSArray * repos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    
        NSString * username = self.friendInfo[@"login"];
        
        NSString * urlString = [NSString stringWithFormat:@"https://api.github.com/users/%@/repos", username];
        NSURL * url = [NSURL URLWithString:urlString];
        
        NSURLRequest * request = [NSURLRequest requestWithURL:url];
        NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
        repos = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableContainers error:nil];
        
        NSLog(@"%@",repos);
    
    UITableView * tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, 320, 368)];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    
    [self.view addSubview:tableView];
    
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return repos.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    
    cell.textLabel.text = repos[indexPath.row][@"name"];
    
    if (repos[indexPath.row][@"description"] == [NSNull null]) {
        
    }else{
    
    
    cell.detailTextLabel.text = repos[indexPath.row][@"description"];
        
    }
    
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
