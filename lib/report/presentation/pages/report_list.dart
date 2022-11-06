import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:star_wars_app/characters/index/data/freezed/report_state.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/connection_verifier.dart';
import 'package:star_wars_app/report/data/model/report_model.dart';
import 'package:star_wars_app/report/domain/entities/report.dart';
import 'package:star_wars_app/report/presentation/riverpod/provider.dart';

/* STATES PROVIDERS */
final pageCounterProvider = StateProvider((ref) => 1);

class ReportList extends ConsumerWidget {
  const ReportList({Key? key}) : super(key: key);
  static String get routeName => 'report_list';
  static String get routeLocation => 'report_list';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /* Characters */
    final reports = ref.watch(reportProvider).reports;
    /* State of petition */
    bool isLoading = ref.watch(reportProvider).isLoading;
    return !isLoading
        ? StarWarsReportPage(reportsData: reports)
        : Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 80.0,
                  ),
                ])),
          );
  }
}

class StarWarsReportPage extends StatelessWidget {
  const StarWarsReportPage({
    Key? key,
    required this.reportsData,
  }) : super(key: key);

  final List<ReportModel> reportsData;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
            maxHeight: 2 * (MediaQuery.of(context).size.height / 3)),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          children: [
            ConnectionVerifier(swichtState: swithCurrentValue),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: reportsData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                        child: ListTile(
                      title: Text(reportsData[index].title),
                      subtitle: Text(reportsData[index].body),
                      trailing: Text(DateFormat("yyyy-MM-dd HH:mm")
                          .format(reportsData[index].date)),
                    ));
                  }),
            ),
          ],
        ));
  }
}
