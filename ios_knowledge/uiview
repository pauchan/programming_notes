When the contents of your view change, you do not redraw those changes directly. Instead, you invalidate the view using either the setNeedsDisplay or setNeedsDisplayInRect: method. 

The frame property contains the frame rectangle, which specifies the size and location of the view in its superview’s coordinate system.
The bounds property contains the bounds rectangle, which specifies the size of the view (and its content origin) in the view’s own local coordinate system.
The center property contains the known center point of the view in the superview’s coordinate system.

You use the center and frame properties primarily for manipulating the geometry of the current view. For example, you use these properties when building your view hierarchy or changing the position or size of a view at runtime. If you are changing only the position of the view (and not its size), the center property is the preferred way to do so. The value in the center property is always valid, even if scaling or rotation factors have been added to the view’s transform. The same is not true for the value in the frame property, which is considered invalid if the view’s transform is not equal to the identity transform.

You use the bounds property primarily during drawing

	The access time for a value in the array is guaranteed to be at
	worst O(lg N) for any implementation, current and future, but will
	often be O(1) (constant time). Linear search operations similarly
	have a worst case complexity of O(N*lg N), though typically the
	bounds will be tighter, and so on. Insertion or deletion operations
	will typically be linear in the number of values in the array, but
	may be O(N*lg N) clearly in the worst case in some implementations.
	There are no favored positions within the array for performance;
	that is, it is not necessarily faster to access values with low
	indices, or to insert or delete values with high indices, or
	whatever.

reaction to events:
1. Change the properties (frame, bounds, alpha, and so on) of the view or its subviews.
2. Call the setNeedsLayout method to mark the view (or its subviews) as needing a layout update.
3. Call the setNeedsDisplay or setNeedsDisplayInRect: method to mark the view (or its subviews) as needing to be redrawn.
4. Notify a controller about changes to some piece of data.

If the geometry of a view changed for any reason, UIKit updates its subviews according to the following rules:
If you have configured autoresizing rules for your views, UIKit adjusts each view according to those rules. For more information about how autoresizing rules work, see Handling Layout Changes Automatically Using Autoresizing Rules.
If the view implements the layoutSubviews method, UIKit calls it.
You can override this method in your custom views and use it to adjust the position and size of any subviews


Because view objects are the main way your application interacts with the user, they have many responsibilities. Here are just a few:

Layout and subview management
A view defines its own default resizing behaviors in relation to its parent view.
A view can manage a list of subviews.
A view can override the size and position of its subviews as needed.
A view can convert points in its coordinate system to the coordinate systems of other views or the window.
Drawing and animation
A view draws content in its rectangular area.
Some view properties can be animated to new values.
Event handling
A view can receive touch events.
A view participates in the responder chain.
This chapter focuses on the steps for creating, managing, and drawing views and for handling the layout and management of view hierarchies. For information about how to handle touch events (and other events) in your views, see Event Handling Guide for iOS.


Being Prepared for Layout Changes
Layout changes can occur whenever any of the following events happens in a view:

The size of a view’s bounds rectangle changes.
An interface orientation change occurs, which usually triggers a change in the root view’s bounds rectangle.
The set of Core Animation sublayers associated with the view’s layer changes and requires layout.
Your application forces layout to occur by calling the setNeedsLayout or layoutIfNeeded method of a view.
Your application forces layout by calling the setNeedsLayout method of the view’s underlying layer object.



To hide a view visually, you can either set its hidden property to YES or change its alpha property to 0.0. A hidden view does not receive touch events from the system. However, hidden views do participate in autoresizing and other layout operations associated with the view hierarchy. Thus, hiding a view is often a convenient alternative to removing views from your view hierarchy, especially if you plan to show the views again at some point soon.


The size of a view’s bounds rectangle changes.
An interface orientation change occurs, which usually triggers a change in the root view’s bounds rectangle.
The set of Core Animation sublayers associated with the view’s layer changes and requires layout.
Your application forces layout to occur by calling the setNeedsLayout or layoutIfNeeded method of a view.
Your application forces layout by calling the setNeedsLayout method of the view’s underlying layer object.
Handling Layout Changes Automatically Using Autoresizing Rules
When you change the size of a view, the position and size of any embedded subviews usually needs to change to account for the new size of their parent. The autoresizesSubviews property of the superview determines whether the subviews resize at all. If this property is set to YES, the view uses the autoresizingMask property of each subview to determine how to size and position that subview. Size changes to any subviews trigger similar layout adjustments for their embedded subviews.







layout

autolayout:
func setNeedsUpdateConstraints()
func updateConstraints()
func updateConstraintsIfNeeded() ->automatically

drawing
setNeedsDisplay

iOS uses hit-testing to find the view that is under a touch. Hit-testing involves checking whether a touch is within the bounds of any relevant view objects. If it is, it recursively checks all of that view’s subviews. The lowest view in the view hierarchy that contains the touch point becomes the hit-test view. After iOS determines the hit-test view, it passes the touch event to that view for handling.

Therefore, UIKit first sends the event to the object that is best suited to handle the event. For touch events, that object is the hit-test view, and for other events, that object is the first responder. 


Displaying Your Views at Runtime

Storyboards make the process of loading and displaying your view controller’s views very simple. UIKit automatically loads views from your storyboard file when they are needed. As part of the loading process, UIKit performs the following sequence of tasks:

Instantiates views using the information in your storyboard file.
Connects all outlets and actions.
Assigns the root view to the view controller’s view property.
Calls the view controller’s awakeFromNib method.
When this method is called, the view controller’s trait collection is empty and views may not be in their final positions.
Calls the view controller’s viewDidLoad method.
Use this method to add or remove views, modify layout constraints, and load data for your views.
Before displaying a view controller’s views onscreen, UIKit gives you some additional chances to prepare those views before and after they are onscreen. Specifically, UIKit performs the following sequence of tasks:

Calls the view controller’s viewWillAppear: method to let it know that its views are about to appear onscreen.
Updates the layout of the views.
Displays the views onscreen.
Calls the viewDidAppear: method when the views are onscreen.

- update constraints
 - bottom - up
 - layout subview
  - top down
 - drawing

 The most drastic approach is to override layoutSubviews/layout without calling the super class’s implementation. This means that you’re opting out of Auto Layout for the view tree within this view. From this point on, you can position subviews manually however you like.