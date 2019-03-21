//
//  GetTxlistVC.m
//  CCTBTC
//
//  Created by Helios on 2019/2/20.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "GetTxlistVC.h"
#import <CCTBTCLib/CCTBTCLib.h>

@interface GetTxlistVC ()

@property (weak, nonatomic) IBOutlet UITextField *addText;

@end

@implementation GetTxlistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"交易记录";
}

- (IBAction)btnAction:(id)sender {
    
    /**
     完整的 CCTBTCLib 库代码，请加我的微信：tiantaotaobao 收费400元（ETH+BTC全套库+Demo代码）
     代码里不明白的都可以问我，其他区块链相关的问题我们也都可以互相讨论，专注区块链开发，还希望交个朋友。
     **/
    
    _addText.text = @"1B4UDft3TyRhoygLnMyyoFrbSkjpCD8vEJ";
    
    if(_addText.text.length == 0){
        return;
    }
    
    [CCTBTCLib getTxlistByAddress:_addText.text Network:mainnet Path:btcMainnet Page:0 resultBlock:^(NSArray *array, BOOL suc) {
        
        if(suc){
            NSLog(@"%@",array);
        }else{
            NSLog(@"查询失败");
        }
    }];
}

@end
