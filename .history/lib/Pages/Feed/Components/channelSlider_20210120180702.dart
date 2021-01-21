class ChannelSlider extends StatelessWidget {
  const ChannelSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ChannelCard(
            channelName: "Animals",
            channelImage: NetworkImage(
                'https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/dogs_1280p_0.jpg?itok=cnRk0HYq'),
          ),
          ChannelCard(
            channelName: "Cars",
            channelImage: NetworkImage(
                'https://drivewrite.co.uk/wp-content/uploads/2019/12/Classic-car-624x351.jpg'),
          ),
          ChannelCard(
            channelName: "Make-up",
            channelImage: NetworkImage(
                'https://static.onecms.io/wp-content/uploads/sites/14/2020/08/20/makeup-header-2000.jpg'),
          ),
          ChannelCard(
            channelName: "Landscapes",
            channelImage: NetworkImage(
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80'),
          ),
          ChannelCard(
            channelName: "Vintage",
            channelImage: NetworkImage(
                'https://expertphotography.com/wp-content/uploads/2019/07/Vintage-Photography-2.jpg'),
          ),
          ChannelCard(
            channelName: "Food",
            channelImage: NetworkImage(
                'https://www.diabetes.co.uk/wp-content/uploads/2019/01/iStock-10131071761-1.jpg'),
          ),
        ],
      ),
    );
  }
}
