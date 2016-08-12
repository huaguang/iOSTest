//
//  ViewController.m
//  TestFunc_iOS
//
//  Created by guanghzhang on 16/7/18.
//  Copyright © 2016年 guanghzhang. All rights reserved.
//

#import "ViewController.h"
#import "MyNSString.h"
//#import "MyNSString_2.h"


//static NSFileManager *fm;
@interface ViewController ()
{
    int c;
}
@property(strong,nonatomic) NSMutableArray *favorites;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@->%d",[@"hello" lengthAsNumber]);
    
    for (int i = 0;i < 100;i++){
        
    }
    for(int i=0;i<100;i++){
        i++;
    }
    
    
    //    [self prepareData];
    //    //self.prepareData;
    //    NSLog(@"个数为:%d",[self.favorites count]);
    //    NSString *homeDir=[self getHomeDir];
    //    fm = [NSFileManager defaultManager];
    //   [self printFilePathByParentPath:homeDir indent:0];
    
    //获取当前目录
    //  NSString *basePath=@"/var/mobile/Containers/Data/Application/E334638C-8164-4D23-9613-14B7D7873A09/.com.apple.mobile_container_manager.metadata.plist";
    //  [fm fileExistsAtPath:newPath isDirectory:&isDirctory];
    
    //测试NSString函数。
    //    NSLog(@"第一个%@",homeDir);
    //    int pos=[self lastDirPosition:homeDir];
    //    NSLog(@"第二个%@位置是：%d",[homeDir substringFromIndex:pos],pos);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}




//寻找路径中最后一个‘/’的位置。
-(NSInteger)lastDirPosition:(NSString*)absolutePath{
    long i=[absolutePath length]-1;
    for(;i>=0;i--){
        unichar ch=[absolutePath characterAtIndex:i];
        if(ch =='/')
            return i;
    }
    return -1;
}


//测试使用点调用方法与属性与使用下划线调用属性的异同。
-(void)prepareData{
    _favorites=[[NSMutableArray alloc]initWithCapacity:10];
    [_favorites addObject:@"asdf"];
    [_favorites addObject:@"asdf"];
    [_favorites addObject:@"asdf"];
    [_favorites addObject:@"asdf"];
    [_favorites addObject:@"asdf"];
    [_favorites addObject:@"asdf"];
}
-(NSArray*)favorites{
    NSArray *array=@[@"string",@"1",@"2",@"4"];
    return array;
}

////测试文件路径
//-(NSString*)getHomeDir{
//    NSString *homeDir=NSHomeDirectory();
//    NSLog(@"HomeDir is ******%@******",homeDir);
//    //  /var/mobile/Containers/Data/Application/1B82EAC8-9100-4CF5-BD20-F91E8C16BB29
//    return homeDir;
//}
//
//-(void)printFilePathByParentPath:(NSString*)homeDir indent:(int)indent{
//    NSArray*pathes;
//    if((pathes=[fm contentsOfDirectoryAtPath:homeDir error:NULL])==nil){
//        NSLog(@"NULL  homeDir is *%@*",homeDir);
//    }
//    NSMutableString *indents=[NSMutableString stringWithCapacity:indent];
//    for(int i=0;i<indent;i++){
//        [indents appendString:@"-"];
//    }
//    for(NSString *path in pathes){
//        NSLog(@"%@%@",indents,path);
//        BOOL isDirctory=0;
//        NSString *newPath=[NSString stringWithFormat:@"%@/%@",homeDir,path];
//        [fm fileExistsAtPath:newPath isDirectory:&isDirctory];
//        // NSLog(@"%d",(int)isDirctory);
//        if(isDirctory){
//            NSLog(@"是目录：%@，isDirctory值为：%d",newPath,isDirctory);
//            //是目录，进入下一层。
//            [self printFilePathByParentPath:newPath indent:indent+1];
//        }else{
//            //是文件，已经打印过了，直接跳过。
//            NSLog(@"是文件：%@，isDirctory值为：%d",newPath,isDirctory);
//        }
//    }
//}





@end
