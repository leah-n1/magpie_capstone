import 'package:flutter/widgets.dart';

class MPPullDownRefresh extends StatefulWidget {
  final Widget scrollWidget;
  final Future<void> Function() onRefresh;

  const MPPullDownRefresh(
      {super.key, required this.scrollWidget, 
      required this.onRefresh});

  @override
  State<MPPullDownRefresh> createState() => _MPPullDownRefreshState();
}

class _MPPullDownRefreshState extends State<MPPullDownRefresh> {
  bool isRefreshing = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
           
            if ((scrollNotification.metrics.pixels <= -150) &&
                !isRefreshing && //false
                (scrollNotification.metrics.axisDirection ==
                    AxisDirection.down)) {
              setState(() {
                isRefreshing = true;
              });
              widget.onRefresh().then((_) {
                setState(() {
                  isRefreshing = false;
                });
              });
            }
            return false;
          },
          child: widget.scrollWidget,
        ),
        if (isRefreshing)
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Color.fromARGB(195, 228, 228, 228),
              ),
              child: const Center(
                child: Text("Pull to Refresh"),
              ),
            ),
          ),
      ],
    );
  }
}