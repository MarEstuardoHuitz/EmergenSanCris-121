import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SingleSelectUser extends StatefulWidget {
  const SingleSelectUser({
    required this.prefs,
    required this.title,
    required this.usertype,
    required this.isShowPhonenumber,
    this.manageruid,
    this.initfetchlimit,
    required this.onselected,
    this.bannedusers,
  });
  final String title;
  final String? manageruid;
  final int usertype;
  final Function(String uid, UserRegistryModel userMap) onselected;
  final int? initfetchlimit;
  final SharedPreferences prefs;
  final List<dynamic>? bannedusers;
  final bool isShowPhonenumber;
  @override
  _SingleSelectUserState createState() => new _SingleSelectUserState();
}

class _SingleSelectUserState extends State<SingleSelectUser> {
  List<dynamic> selectedList = [];
  @override
  Widget build(BuildContext context) {
    final registry = Provider.of<UserRegistry>(context, listen: false);
    return Scaffold(
      backgroundColor: Mycolors.backgroundcolor,
      appBar: AppBar(
          elevation: 0.4,
          backgroundColor:
              Mycolors.getColor(widget.prefs, Colortype.primary.index),
          title: MtCustomfontBold(
            text: widget.title,
            fontsize: 18,
            color: Mycolors.whiteDynamic,
          )),
      body: widget.usertype == Usertype.agent.index
          ? registry.agents.length == 0
              ? noDataWidget(
                  context: context,
                  title: getTranslatedForCurrentUser(
                          context, 'xxnoxxavailabletoaddxx')
                      .replaceAll('(####)',
                          getTranslatedForCurrentUser(context, 'xxagentsxx')),
                )
              : ListView.builder(
                  padding: EdgeInsets.only(bottom: 150),
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: registry.agents.length,
                  itemBuilder: (BuildContext context, int i) {
                    UserRegistryModel dc = registry.users[i];
                    return selectableusercard(
                        isShowPhonenumber: widget.isShowPhonenumber,
                        onselected: widget.onselected,
                        doc: dc,
                        context: context,
                        bannedusers: widget.bannedusers ?? [],
                        isCustomer: false,
                        isManager: widget.manageruid == dc.id);
                  })
          : widget.usertype == Usertype.customer.index
              ? registry.customer.length == 0
                  ? noDataWidget(
                      context: context,
                      title: getTranslatedForCurrentUser(
                              context, 'xxnoxxavailabletoaddxx')
                          .replaceAll(
                              '(####)',
                              getTranslatedForCurrentUser(
                                  context, 'xxcustomerxx')),
                      subtitle: getTranslatedForCurrentUser(
                              context, 'xxnoxxavailabletoaddforxxxx')
                          .replaceAll(
                              '(####)',
                              getTranslatedForCurrentUser(
                                  context, 'xxcustomerxx'))
                          .replaceAll(
                              '(###)',
                              getTranslatedForCurrentUser(
                                  context, 'xxsupporttktxx')))
                  : ListView.builder(
                      padding: EdgeInsets.only(bottom: 150),
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: registry.customer.length,
                      itemBuilder: (BuildContext context, int i) {
                        var dc = registry.customer[i];
                        return selectableusercard(
                          isShowPhonenumber: widget.isShowPhonenumber,
                          onselected: widget.onselected,
                          doc: dc,
                          context: context,
                          isCustomer: true,
                          bannedusers: widget.bannedusers ?? [],
                        );
                      })
              : noDataWidget(
                  context: context,
                  title: getTranslatedForCurrentUser(
                          context, 'xxnoxxavailabletoaddxx')
                      .replaceAll('(####)',
                          getTranslatedForCurrentUser(context, 'xxusersxx'))),
    );
  }
}
