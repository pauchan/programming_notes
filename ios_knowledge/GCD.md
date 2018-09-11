# GCD

## dispatch once

```
 static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [UIColor colorWithRed:0.380f green:0.376f blue:0.376f alpha:1.000f];
    });
```


## dispatch after

```
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t) (delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [self bar];
    });
```

## custom queue

```
NSString *label = [NSString stringWithFormat:@"%@.isolation.%p", [self class], self];
self.isolationQueue = dispatch_queue_create([label UTF8String], NULL);
```

## isolation queue - way to access resources in a safe, ordered manner 

```
dispatch_get_main_queue();
dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
```

## Lambda in ObjC??? 
void (^test)(int) -> ^(int pawel) {
	
}