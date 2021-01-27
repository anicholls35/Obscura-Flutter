class BackButton extends StatelessWidget {
  const BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      enableFeedback: true,
      highlightColor: accentColour,
      hoverColor: secondryColour,
      iconSize: 30,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}