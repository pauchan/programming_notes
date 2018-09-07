	While we don’t run Objective-C on native OSX, we do run it in the latest clang with objc. This lets you include classes like NSString and so forth largely as you normally would.

Your code is compiled with

clang `gnustep-config --objc-flags` `gnustep-config --objc-libs` \
  -fobjc-arc -fobjc-nonfragile-abi -lobjc -lgnustep-base
Which activates automatic reference counting and the nonfragile ABI.

You should define an int main() function.

Are there any libraries or settings I missed? Feel free to email me with suggestions!



Explain method swizzling. When you would use it? — I like this question because it’s deep language. Most people will never need to use swizzling. The developer’s answer to this question also shows me how much restraint s/he has when implementing complex code. An answer of “I swizzle everything” is much scarier than someone saying they have never worked with it.
Take three objects: a grandparent, parent and child. The grandparent retains the parent, the parent retains the child and the child retains the parent. The grandparent releases the parent. Explain what happens. — Even with ARC, I like to ask a lot of memory-related questions, as it shows that someone has been around for a while and has core knowledge about how things work.
What happens when you invoke a method on a nil pointer? — Basic Objective-C handling is important and it’s shocking how many times I have heard wrong answers to questions like this.
Give two separate and independent reasons why retainCount should never be used in shipping code. — This question has two benefits: to make sure someone isn’t using retainCount and to see if they understand why they shouldn’t use it.
Explain your process for tracing and fixing a memory leak. — This dives into the applicant’s knowledge of memory, instruments and the debugging process. Sometimes I hear things like “start commenting out code until it is fixed,” which is slightly terrifying.
Explain how an autorelease pool works at the runtime level. — These types of questions go beyond the basics a programmer will learn from a couple of books and investigates his or her knowledge of how things actually work.
When dealing with property declarations, what is the difference between atomic and non-atomic? — Once again, it is shocking how many people don’t know the answer to this question. Many just declare properties a certain way because it’s what they’ve seen others do. Questions like these expose those issues.
In C, how would you reverse a string as quickly as possible? — I don’t like to dive too deeply into computer science, but this question lets me know how someone thinks about performance as well as about his or her background in C. I have also been known to dig into big O notation.
Which is faster: to iterate through an NSArray or an NSSet? — Another deep dive. Sometimes just because a class solves a problem doesn’t mean it’s the one you should be using.
Explain how code signing works. — A lot of applicants have no idea how code signing works and then complain because they are having code signing issues.
What is posing in Objective-C? — Posing is a little-used feature of Objective-C. Like the swizzling question, this gives me an indication of how deep someone has dived into the language.
List six instruments that are part of the standard. — This question gives me a general idea of how much time someone has spent in instruments. Hint: It should be at least 10% of your coding time, if not more.
What are the differences between copy and retain? — Memory questions reveal a lot about a developer’s knowledge, especially since many people are leaning on ARC these days.
What is the difference between frames and bounds? — I don’t ask a lot of GUI-type questions and I probably should ask more, but this one gives me an idea of how much layout work a developer has done.
What happens when the following code executes? Ball *ball = [[[[Ball alloc] init] autorelease] autorelease]; — Another memory question. The answer I am looking for here is not just that it will crash, which it will – I want to know why and when.
List the five iOS app states. — Almost no one gets this question right. Normally I have to give an example, such as background state, for them to know what I am talking about.
Do you think this interview was a good representation of your skills as a developer? — Some people test well and some don’t. I like to give people the option to explain their results a little. Confidence is important and the answer to this question can reveal a lot about a person’s confidence.

1. Consider the following UITableViewCell constructor:

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
What is the purpose of the reuseIdentifier? What is the advantage of setting it to a non-nil value?


- the purpose of this identifier is to be able to keep only one instance of the expensive UITableViewCell objects in the memory. For every identifier the cell is being reused with only data being loaded (prepareForReuse)


2. What are different ways that you can specify the layout of elements in a UIView?

- three ways
- manually in layoutSubiews
- usingAutoresizeMasks
- Autolayout (IB, code, visualSyntax, PureLayout, Cartography)

3. What is the difference between atomic and nonatomic properties? Which is the default for synthesized properties? When would you use one vs. the other?

- atomic gives you locks around the setters which makes them atomic - guaranteed not to be interrrupted by other code, pretty nonefficient, but default
- you usually dont need it so you make the property nonatomic

1. apple id vs bundle id

An App ID is a two-part string used to identify one or more apps from a single development team. The string consists of a Team ID and a bundle ID search string, with a period (.) separating the two parts. The Team ID is supplied by Apple and is unique to a specific development team, while the bundle ID search string is supplied by teh developer to match either the bundle ID of a single app or a set of bundle IDs for a group of apps.

Because most people think of the App ID as a string, they think it is interchangeable with Bundle ID. It appears this way because once the App ID is created in the Member Center, you only ever use the App ID Prefix which matches the Bundle ID of the Application Bundle.

The bundle ID uniquely defines each App. It is specified in Xcode. A single Xcode project can have multiple Targets and therefore output multiple apps. A common use case for this is an app that has both lite/free and pro/full versions or is branded multiple ways.