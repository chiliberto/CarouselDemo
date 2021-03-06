# CarouselDemo

This is an iOS demo application which shows a walkthrough of the Welcome screens, Create Account and Sign Up.

Time spent: 6 hours spent in total

Completed user stories:

Initial Screen
* [x] Required: Static photo tiles on the initial screen
* [x] Optional: Photo tiles move with scrolling

Sign In
* [x] Required: Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
* [x] Required: User sees an error alert when no email is present or no password is present.
* [x] Required: User sees a loading screen upon tapping the Sign In button.
* [x] Required: alertController.dismissViewControllerAnimated(true, completion: nil) dismisses the alert controller loading screen with no buttons.
* [x] Required: User sees an error alert when entering the wrong email/password combination.
* [x] Required: User is taken to the tutorial screens upon entering the correct email/password combination.
* [x] Optional: When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard.

Tutorial Screens
* [x] Required: User can page between the screens
* [x] Optional: User can page between the screens with updated dots
* [x] Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.

Image Timeline
* [x] Required: Display a scrollable view of images.
* [x] Required: User can tap on the conversations button to see the conversations screen (push).
* [x] Required: User can tap on the profile image to see the settings view (modal from below).

Settings
* [x] Required: User can dismiss the settings screen.
* [x] Required: User can log out

Not completed:

Sign In
* [ ] Optional: On appear, scale the form up and fade it in.

Sign Up
* [ ] Optional: Tapping in the form reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
* [ ] Optional: Tapping the Agree to Terms checkbox selects the checkbox.
* [ ] Optional: Optional: Tapping on Terms shows a webview with the terms.
* [ ] Optional: Optional: User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.

Learn more about Carousel
* [ ] Optional: Show the "Learn more about Carousel" button in the photo timeline.
* [ ] Optional: Tap the X to dismiss the banner
* [ ] Optional: Track the 3 events:
** View a photo full screen
** Swipe left and right
** Share a photo
* [ ] Optional: Upon completion of the events, mark them green.
* [ ] Optional: When all events are completed, dismiss the banner.

Walkthrough of all user stories:

[![Video Walkthrough](CarouselDemo.gif)](CarouselDemo.mov)


