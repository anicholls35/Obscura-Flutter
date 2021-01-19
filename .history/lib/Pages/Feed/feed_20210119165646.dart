

//TODO: Create a component for posts
//TODO: Format feed page to look like prototype
//TODO: Create appbar with correct format
//TODO: Seperate appbar as component - allow uniformity accross pages
//TODO: Create a bottom bar
//TODO: Link to navigation page

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text('OBSCURA'),
        appBar: AppBar(),
        widgets: [
          MapWidget(),
          SearchWidget(),
        ],
      ),
      //The ListView will render all posts (to a limit) and draw them in a
      //scrollable frame. It will stop when the end has been reached. Change
      //to pull in more feeds.
      //TODO: Make feed auto load more posts when user reaches the end. (Backend Needed)
      //TODO: Add Row on top of this for channel cards
      body: ListView(
        children: <Widget>[
          feedPost(
            postImage: PostImage(
              pImage: feedPhotos[0],
            ),
            uploaderProfilePic: accountPhotos[0],
            uploaderName: accountNames[0],
            geoLocation: geoLocations[0],
            commentsTotal: getComments(),
            rating: getRating(),
          ),
        ],
      ),
    );
  }
}