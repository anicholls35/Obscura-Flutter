# INSTRUCTIONS FOR UPLOADING TO OBSCURA-FLUTTER GITHUB & WRITTING FLUTTER APP
**Updated: 09/02/2021**
When working on the OBSCURA-FLUTTER Project please adhere to the following rules stated in the following document. Failure to do so may result in your code not being merged into the final code for submission.

## Project Setup
- OBSCURA-FLUTTER not only holds the code for the Obscura Project but also hosts the project map for the included stages (2/3). ***Active Stage: 3***
- The issues page is where all tasks needed for the active TODOs are held
- Assign yourself to an issue as needed & move that issue to in progress on the project board
- Issues run in two week sprints - decided in group meetings taken prior to this
    - Issues not completed in their sprint will have to be discussed in a group meeting and logged
- Each issue is to have it's own branch made from the main branch
    - Main branch will be updated after each sprint

### Flutter Code
- When writing the code create a new folder with the name of the issue worked on in the format: My_Page
- Create the main file for the page (should be the same as folder but in lowerCamalCase format - myPage.dart)
- Within the My_Page folder create another folder called Components which will hold all custom widgets you've made for the page (Making the main page more readable and components reusable if needed)
***All .dart files are to follow lowerCamalCase format***
- Upon finishing up for the day commit any changes you've made to you're bench for backup reasons and title the commit with the changes you've made
- Update the included BRANCH_CHANGELOG.md file with the changes/features you've added following the given format
```
BUILD: #####
Date
1. Changed feature
2. Added feature

Patch Notes **(OPTIONAL)**
1. Modified feature

Known Issues **(OPTIONAL)**
1. Bug 1
```

- Date Format: 9th February 2021
- BUILD Number Format: XYI1...In
    - X = Current Major Release Number (Viewable on the main branch README.md)
    - Y = Current Minor Release Number (Viewable on the main branch README.md)
    - I1 ... In = The issue numbers assigned to what issue you're working on

***NOTE: Failure to complete this will result in slow down of branch merge to main and additional time added to your personal workload***

## Working on an issue
- Assign yourself to your chosen/given issue on the GitHub Site
- Upon completion of an issue, submit a push request to GitHub
    - Ensure you've assigned yourself to the push request
    - Tagged the means behind the issue (Bug, Enhancement, etc)
    - Linked it to the Project
    - Linked it to the current milestone (Sprint)
    - Linked it to the correct issue it resolves

***NOTE: Failure to complete this will result in slow down of branch merge to main and additional time added to your personal workload***
