#import <Foundation/Foundation.h>
#import <stdio.h>

@interface NSMutableArray (PRQuickSort)
  
  -(void)sort;
  
@end
  
@implementation NSMutableArray (PRQuickSort)
  
  -(void)sort {
    [self sortFromLeft:0 right:self.count-1];  
  }

  -(void)sortFromLeft:(NSInteger)left right:(NSInteger)right {
    
    if (right-left <= 0) {
      return;
    }
  
    NSInteger partition = [self partitionForLeft:left right:right];
    [self sortFromLeft:0 right:partition-1];
    [self sortFromLeft:partition+1 right:right-1];
  }

 -(NSInteger)partitionForLeft:(NSInteger)left right:(NSInteger)right {
 
   NSInteger tempRight = right;
   
   NSLog(@"partition starting: %d %d", left, right);
    NSInteger pivot = self[right];
   while(right > left) {
     
     while(self[left] < pivot) {
      left++;
     }
    while(self[right] > pivot) {
      right--;
     }
     NSNumber *temp = self[left];
     self[left] = self[right];
     self[right] = temp;
     NSLog(@"partition is here: %d %d", left, right);
     
   }
   
    NSNumber *temp = self[left];
    self[left] = [[NSNumber alloc] initWithInteger:pivot];
    self[tempRight] = temp;
   
   NSLog(@"returning");
   //something went wrong
   return left;
 }
  
@end


int main (int argc, const char * argv[])
{
  @autoreleasepool { 
    NSMutableArray *a = [[NSMutableArray alloc] initWithArray: @[@3,@12,@7,@9,@4,@6,@15,@8,@10,@2,@11,@5,@13,@14,@1]];
    [a sort];
    NSLog(@"res* %@", a);
  }
}
