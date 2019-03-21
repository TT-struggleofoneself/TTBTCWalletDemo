//
//  ImportByMVC.m
//  CCTBTC
//
//  Created by Helios on 2019/2/20.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "ImportByMVC.h"
#import <CCTBTCLib/CCTBTCLib.h>

@interface ImportByMVC ()

@property (weak, nonatomic) IBOutlet UITextView *mTextV;

@property (weak, nonatomic) IBOutlet UITextView *walletText;

@end

@implementation ImportByMVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"通过助记词导入钱包";
}

- (IBAction)btnAction:(id)sender {
    
    /**
     完整的 CCTBTCLib 库代码，请加我的微信：tiantaotaobao 收费400元（ETH+BTC全套库+Demo代码）
     代码里不明白的都可以问我，其他区块链相关的问题我们也都可以互相讨论，专注区块链开发，还希望交个朋友。
     **/
    
    _mTextV.text = @"suffer hero hole vibrant sketch fish venture insane face regular fun ready";
    
    if(_mTextV.text.length == 0){
        return;
    }
    
    [CCTBTCLib importWalletByMnemonic:_mTextV.text Newwork:mainnet Path:btcMainnet password:@"123456" resultBlock:^(NSString *private, NSString *address) {
        
        self.walletText.text = [NSString stringWithFormat:@"【私钥】：%@ \n\n 【地址】：%@ \n\n",private,address];
    } error:^{
        
        NSLog(@"导入失败");
    }];
}

@end
