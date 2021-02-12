# Obsucra - VERSION: 1.2.1-demo+10678
## *Status: In-Development -> Unpublished*

### About
Obscura is the idea and creation of the Lucky7 team for the 2020/21 Heriot-Watt Year 3 Group Project. Currently an ongoing project to produce a social media platform were professionals and hobbyists can post images of objects to show their photography skills. Obscura is an object only platform, meaning that images can't contain any people (full or partial) in the images. Obscura will provide a gamified experience to allow user's to challenge each other and showcase their images against each other. Gamification can be done globally across the app, or in select groups - called channels - were people with similar interests can interact and compete with each other. 

Obscura will also use Geo-Location to allow images to be mapped to were they were taken. This data allows obscura as a platform to do geo-based challenges, as well as allowing users to visit where these pictures were taken. (User's personal location is not uploaded). 

### Intended Platforms
Lucky7's goal is to have Obscura to be functional on both Android, iOS, Web + Mac OS|Window|Linux by **1st April 2021** *(STC)*

***For aid in using this GitHub repo, please read the guidelines in the wiki section. There you'll aldo find useful links to aid in the development***

# Obscura Change-log
### 8th February 2021
1. Completed Post/Following/Followers page
2. Implement a nested scroll view and shared tab controller
3. Improved design with Slivers

#### Known Issues
1. No data is loaded

### 3rd Febuary 2021
#### Patch Notes (#07810)
1. Implemented basic version of channel select screen
2. Removed changes from 29th January Update

### 29th January 2021
1. Completed work on the initial version of the custom button for channel select screen
2. Switched to a logarithmic function to determine size with a bounded maximum

#### Known Issues
1. Can't dynamically produce channel cards
2. Buttons can't have individual onPress functions

### 27th January 2021
1. Created Profile Overview Page
2. Created Profile Container Page
3. Made comments sliver reactive
4. Made Images able to be Asset or Network base
5. Added values to fakeData - users

#### Patch Notes (#1047+482)
1. Made Channel Cards react to screen size
2. Locked app's rotation in portrait mode

#### Patch Notes (#10461)
1. Image View allows Pan & Zoom of images

#### Patch Notes (#10391)
1. Updated iOS storyboard for splashscreen *(Affects iOS devices only)*

#### Patch Notes (#1040+432)
1. Make feed posts responsive to devices screen size
2. Allow users to click a full screen post to see full screen image

#### Known Issues
1. Image View doesn't allow pan and zoom

#### Patch Notes (#10411)
1. Added swipe down to go back on comments screen
2. Added swipe right to go back on full screen posts
3. Added swipe down to go back on full screen posts

### 25th January 2021
***!!! NOTE: Any build numbers which start with #0 are no longer compatible with this branch. Under no circumstance must a branch with build starting with #0 be migrated. Exception: BUILD: 0781 !!!***
#### VERSION: 1.0.0-pre
1. All branches merged to flutter master channel
2. Linked App Bar to profileSplashscreen.dart
3. Updated all dependicies
4. Added *adobe_xd* dependicie

#### Known Issues
1. Profile Pages don't link to the data sets */lib/Global_Components/Fake_Data*
2. Profile pages ain't stateless
3. Decrepit use of FlatButton
4. No Glide Animation
5. No Use of App Bar Sliver
6. Over use of shadows on tabs (Accessability Issue)

#### VERSION: 0.7.1.0752-pre
1. Refactored Login and Register Screens
2. Changed from Stateless to Stateful
3. Add pages to Navigator
4. Created Custom Fade Page Transition in */lib/Global_Components*
5. Added Hero animation to SVGs
6. Adjusted look of TextAreas 
7. Addded onPress function to buttons
8. Created channelData class in */lib/Global_Companents/Fake_Data*

#### Patch Notes
1. Fixed Navigation bar being able to call itself
2. Fixed SVGs not displaying correctly
3. Fixed Keyboard from disrupting the widgets which should of been immutable
4. Improved iOS compatability

#### Known Issues
1. Can't fetch input from TextArea
2. No Error identification for use
3. No block prevent progression to Feed without an account
4. Navigation stack needlesly stacking screens in memory

### 24th January 2021
1. Added new Dependency *flutter_svg* to handle .svg files
2. Implemented register and back buttons to login and register screens respectively
3. Enabled apple login hiding
4. Edited file structure to fit new paths
5. Added svg corner art
6. Fixed issue with the padding surrounding buttons not existing
7. Fixed an indentation issue with assets in pubspec.yaml
8. Added *path_provider* dependancy to manage photos
9. Added *image_picker* dependancy to manage photos
10. Added camera functionality to app
11. Made bottom navigation bar active
12. Added ability for pages to pass their index number to navigation bar
13. Threaded implimented to speed up camera

#### Known Issues
1. Keyboard disrupts screen widgets
2. SVG incorrectly displayed
3. App doesn't save images
4. Nav Bar can call active page, adding to navigation stack

### 23rd January 2021
1. Created a Comments screen
2. Added animation to screen
3. Generated Commet card
4. Created splash screen
5. Matched the design to High-Fi Prototype
6. Changed android manifest
7. Linked Obscura to assets folder
8. Fixed dependicines issue
9. Added *loading_animations* dependancy for splashscreen
10. Restructered Fake Data assets loacated in */lib/Global_Components/Fake_Data*

#### Known Issues
1. No lazy loading
2. No rating system
3. iOS storyboard incomplete
4. Doesn't actually preload anything (Just for demo uses)

### 21st January 2021
1. Added Feed page
2. Created Channel Slider
   - Created Channel Cards
3. Improved Base App Bar
4. Created Bottom Navigation Bar
5. Updated Scaffold to display PrimaryColour instead of white
6. Created full screen post view
7. Added tap detection for posts
8. Added back button on screen
9. Feed can pass information to full screen view
10. Added haptic feedback

#### Known Issues
1. Feed isn't suited for responsive design
2. Can't hide darkened image edges to see image in full
3. No swipe back gesture on Comments and Full Screen Posts Pages
4. Channel Slider isn't linked to channels

### 19th January 2021
1. main branch file structure has been modified
   - .gitignore now added
   - removed user based dependencies
   - added *hello_world.dart* as example screen
2. New file structure instructions published to teams
3. Created new components folder */lib/LoginReg*
4. Implemented TextFormFields for the login and register form fields
5. Implemented a RegisterColumn to hold the four buttons desired
6. Completed an initial version of the login and register screens


### 18th January 2021
1. Created new components folder */lib/LoginReg*
2. Implemented ElevatedButtons for the various LoginButtons
3. Implemented a LoginButtonColumn to hold the four buttons desired

### 14th January 2021
1. Created baseAppBar.dart in */lib/components*
   - This was done to make it easier to produce a uniformed app bar experience accross app pages.

### 11th January 2021
1. Base Project with skelton framework uploaded to GitHub Repo
2. Issues/Tasks Assigned
