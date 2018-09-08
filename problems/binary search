#import <Foundation/Foundation.h>
#import <stdio.h>

@interface BinarySearch: NSObject
  
  +(BOOL)search:(NSArray *)array forElement:(NSInteger)element;
  
@end

@implementation BinarySearch

  +(BOOL)search:(NSArray *)a forElement:(NSInteger)element {
    NSArray *array = [a sortedArrayUsingSelector:@selector(compare:)];
  
    NSInteger l = 0;
    NSInteger r = array.count -1;
    while(r >= l) {
      NSInteger middle = l + (r - l)/2;
      if([array[middle] intValue] == element) {
        return YES;
      } else if(element > [array[middle] intValue]) {
          l = middle+1;
      } else {
          r = middle-1;
      }
    }
  return NO;
}
  
@end


int main (int argc, const char * argv[])
{
  @autoreleasepool { 
   NSArray *arr = @[@3,@12,@7,@9,@4,@6,@15,@8,@10,@2,@11,@5,@13,@14,@1];
    BOOL result = [BinarySearch search:arr forElement:1];   
    NSLog(@"result: %d", result);
  }
}