# Obsucra - Photo Based Social Media Platform
## *Status: In-Development -> Unpublished*

### About
Obscura is the idea and creation of the Lucky7 team for the 2020/21 Heriot-Watt Year 3 Group Project. Currently an ongoing project to produce a social media platform were proffesionals and hobbists can post images of objects to show their photography skills. Obscura is an object only platform, meaning that images can't contain any people (full or partial) in the images. Obscura will provide a gamified experience to allow user's to challenge eachother and showcase their images against eachother. Gamification can be done globally accross the app, or in select groups - called channels - were people with similar interests can interact and compete with eachother. 

Obscura will also use Geo-Location to allow images to be mapped to were they were taken. This data allows obscura as a platform to do geo-based challenges, aswell as allowing users to visit where these pictures were taken. (User's personal location is not uploaded). 

### Intended Platforms
Lucky7's goal is to have Obscura to be functional on both Android, iOS and Web by **1st April 2021** *(STC)*

# Obscura Changelog

## 14th January 2021
### Internal Changes
1. Created baseAppBar.dart in **/lib/components**
   - This was done to make it easier to produce a uniformed app bar experience accross app pages.

## 11th January 2021
### Internal Changes
1. Base Project with skelton framework uploaded to GitHub Repo
2. Issues/Tasks Assigned

## 18th January 2021
1. Created new components folder /lib/LoginReg
2. Implemented ElevatedButtons for the various LoginButtons
3. Implemented a LoginButtonColumn to hold the four buttons desired

## 19th January 2021
1. Created new components folder /lib/LoginReg
2. Implemented TextFormFields for the login and register form fields
3. Implemented a RegisterColumn to hold the four buttons desired
4. Completed an initial version of the login and register screens

## 24th January 2021
1. Added new Dependency flutter_svg to handle .svg files
2. Implemented register and back buttons to login and register screens respectively
3. Enabled apple login hiding
4. Edited file structure to fit new paths
5. Added svg corner art (Currently broken. File needs redoing)
6. Fixed issue with the padding surrounding buttons not existing
7. Fixed an indentation issue with assets in pubspec.yaml
TODO: Find a way to hide bottom container on Keyboard Open. This will require the use of listeners. To be discussed.
TODO: Figure out how Callbacks work. Need help. At time of writing, unable to understand.