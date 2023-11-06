import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScroll extends StatefulWidget {
  static const name = 'infinite_screen';

  const InfiniteScroll({super.key});

  @override
  State<InfiniteScroll> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  List<int> imagesIds = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;
  

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    isMounted = false;
    super.dispose();
  }

  void addFiveImages() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    addFiveImages();
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
    moveScrollToBottom();
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    if(!isMounted) return;

    isLoading = false;
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFiveImages();
    setState(() {});
  }

  void moveScrollToBottom(){
    if ( scrollController.position.pixels + 150 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 200, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: Stack(
          children: [
            RefreshIndicator(
              edgeOffset: 10,
              strokeWidth: 2,
              onRefresh: () => onRefresh(),
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (context, index) {
                  return FadeInImage(
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 300,
                      placeholder:
                          const AssetImage('assets/images/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/id/${imagesIds[index]}/500/300'));
                },
              ),
            ),
            if(isLoading) 
              Align(
                alignment: Alignment.bottomCenter,
                child: FadeInUp(child: SpinPerfect(infinite: true, child: Icon(Icons.refresh_sharp, size: 100, color: colors.primary,))),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
