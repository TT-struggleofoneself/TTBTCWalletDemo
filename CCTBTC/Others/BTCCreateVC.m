//
//  BTCCreateVC.m
//  CCTBTC
//
//  Created by Helios on 2019/2/20.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "BTCCreateVC.h"
#import <CCTBTCLib/CCTBTCLib.h>

@interface BTCCreateVC ()

@property (weak, nonatomic) IBOutlet UITextView *textV;

@end

@implementation BTCCreateVC

- (IBAction)btcAction:(id)sender {
    
    /**
     完整的 CCTBTCLib 库代码，请加我的微信：tiantaotaobao 收费600元（ETH+BTC全套库+Demo代码）
     代码里不明白的都可以问我，其他区块链相关的问题我们也都可以互相讨论，专注区块链开发，还希望交个朋友。
     **/
    
    [CCTBTCLib createWalletWithNewwork:mainnet Path:btcMainnet password:@"12345678" resultBlock:^(NSString *private, NSString *address, NSString *words) {
        
        self.textV.text = [NSString stringWithFormat:@"【地址】%@ \n\n 【私钥】%@ \n\n 【助记词】%@ \n\n",address,private,words];
        
        NSLog(@"%@ \n",address);
        NSLog(@"%@ \n",private);
        NSLog(@"%@ \n",words);
    }];
}

@end


