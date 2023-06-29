part of 'pages.dart';

class DetailLetterPage extends StatelessWidget {
  final DetailPageRouteParams detailPageRouteParams;
  const DetailLetterPage({
    super.key,
    required this.detailPageRouteParams,
  });
  @override
  Widget build(BuildContext context) {
    final braileProvider = context.read<GlobalProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(detailPageRouteParams.letter),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(25),
          child: Hero(
            tag: detailPageRouteParams.letter,
            child: Card(
              color: braileProvider.pickerColor,
              child: LetterBraile(
                word: detailPageRouteParams.listGenerated,
              ),
            ),
          ),
        ),
      ),
    );
  }
}