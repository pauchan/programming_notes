#import "ViewController.h"
#import "Trie.h"

@interface ViewController () <UISearchResultsUpdating>

@property (nonatomic) UISearchController *searchController;
@property (nonatomic, copy) NSArray *filteredWords;
@property (nonatomic) Trie *trie;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.trie = [[Trie alloc] initWithWords:self.words];
    
    self.filteredWords = [NSArray new];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.searchController.searchResultsUpdater = self;
    self.searchController.dimsBackgroundDuringPresentation = NO;
    self.definesPresentationContext = YES;
    self.tableView.tableHeaderView = self.searchController.searchBar;
    
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([self searching]) {
        return _filteredWords.count;
    } else {
        return self.words.count;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (BOOL)searching {
    return self.searchController.active && ![self.searchController.searchBar.text isEqualToString:@""];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSString *string = ([self searching]) ? self.filteredWords[indexPath.row] : self.words[indexPath.row];
    
    cell.textLabel.text = string;
    return cell;
}

- (void)filteredContentForSearchText:(NSString *)text {
//    NSMutableArray *filteredResults = [NSMutableArray new];
//    for (NSString *string in self.words) {
//        if ([string containsString:text]) {
//            [filteredResults addObject:string];
//        }
//    }
//    self.filteredWords = filteredResults;
    self.filteredWords = [self.trie getWordsForPrefix:text];
    [self.tableView reloadData];
}

-(void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    [self filteredContentForSearchText:searchController.searchBar.text];
}

@end
