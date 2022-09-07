//
//  ViewController.m
//  SPOS
//
//  Created by admin on 2021/10/27.
//

#import "ViewController.h"
#import "SPOS-Swift.h"
//#import <DZUserDataSwift-Swift.h>
//#import <DZNetworkSwift-Swift.h>
#import <DZModelA/DZModelOne.h>
// 用户配置
//#import <DZUserData/SPUserData.h>

// 网络头文件
//#import <DZNetwork/DZNetwork.h>
//#import <DZBasic/DZBasic.h>
//#import <SPBBBModule/SPBBBModule-Swift.h>

@interface ViewController ()

//@property (nonatomic, strong) SPLiteDataBase *manager;
//@property (nonatomic, strong) TestModel *testModel;
//@property (nonatomic, assign) NSInteger updateIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

//    self.updateIndex = 1;
    
    self.view.backgroundColor = [UIColor whiteColor];
    ttKoin *tt = [ttKoin new];


}

- (IBAction)insert:(id)sender {

//    self.testModel.name = @"Tony";
//    [self.manager insert:self.testModel intoTable:@"testTable"];

}

- (IBAction)update:(id)sender {
    // 存在uuid，如果有数据就更新数据，没有数据insert
//   self.testModel.name = [NSString stringWithFormat:@"Reet\(%ld)",self.updateIndex];
//    self.testModel.optionalString = @"updateOptionalString";
//
//    [self.manager update:self.testModel fromTable: @"testTable"];
//    self.updateIndex += 1;
}

- (IBAction)delete:(id)sender {
//    [self.manager delete:self.testModel fromTable:@"testTable"];

}

- (IBAction)select:(id)sender {

//    id results = [self.manager select:self.testModel fromTable:@"testTable"];
//
//    if (!results) {
//        NSLog(@"没有查询到数据");
//        return;
//    }
//
//    NSLog(@"查询到数据:\(%@)",results);

}

- (IBAction)drop:(id)sender {

//    [self.manager dropWithDropTable:@"testTable"];
}

//- (SPLiteDataBase *)manager {
//    if (!_manager) {
//        _manager = [SPLiteDataBase createDB:@"statementDB"];
//    }
//
//    return _manager;
//}
//
//- (TestModel *)testModel {
//    if (!_testModel) {
//        TestModel *testModel = [TestModel new];
//        testModel.age       = 18;
//        testModel.name      = @"Tony";
//        testModel.ignore    = @"ignore";
//        testModel.weight    = 140;
//        testModel.newAge    = 19;
//        testModel.uuid      = @"testuuid1";
//
//        testModel.optionalInt = 1;
//        testModel.optionalFloat = 2.0;
//        testModel.optionalDouble = 3.0;
//        testModel.optionalisTest = true;
//        testModel.optionalString = @"optionalString";
//
//        _testModel = testModel;
//    }
//
//    return _testModel;
//}
@end
