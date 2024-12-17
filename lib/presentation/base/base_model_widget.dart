import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseModelWidget<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;
  final T model;
  final Widget? child;
  final Function(T) onModelReady;
  final bool create;

  const BaseModelWidget({
    Key? key,
    required this.builder,
    required this.model,
    this.child,
    required this.onModelReady,
    this.create = true,
  }) : super(key: key);

  @override
  _BaseModelWidgetState<T> createState() => _BaseModelWidgetState<T>();
}

class _BaseModelWidgetState<T extends ChangeNotifier> extends State<BaseModelWidget<T>> {
  late T model;

  @override
  void initState() {
    model = widget.model;
    widget.onModelReady(model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.create
        ? ChangeNotifierProvider<T>(
            create: (context) => model,
            child: Consumer<T>(
              builder: widget.builder,
              child: widget.child,
            ),
          )
        : ChangeNotifierProvider<T>.value(
            value: model,
            child: Consumer<T>(
              builder: widget.builder,
              child: widget.child,
            ),
          );
  }
}
