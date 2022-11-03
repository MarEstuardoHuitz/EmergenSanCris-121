import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SetDepartmentManager extends StatefulWidget {
  final List<UserRegistryModel> agents;
  final String alreadyselecteduserid;
  final String currentUserId;
  final SharedPreferences prefs;
  final Function(UserRegistryModel user) selecteduser;
  const SetDepartmentManager(
      {Key? key,
      required this.agents,
      required this.prefs,
      required this.currentUserId,
      required this.selecteduser,
      required this.alreadyselecteduserid})
      : super(key: key);

  @override
  _SetDepartmentManagerState createState() => _SetDepartmentManagerState();
}

class _SetDepartmentManagerState extends State<SetDepartmentManager> {
  List<UserRegistryModel> list = [];
  @override
  void initState() {
    list = widget.agents;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PickupLayout(
        curentUserID: widget.currentUserId,
        prefs: widget.prefs,
        scaffold: Utils.getNTPWrappedWidget(MyScaffold(
          isforcehideback: true,
          icon1press: () {
            Navigator.of(context).pop();
          },
          icondata1: Icons.close,
          subtitle: getTranslatedForCurrentUser(context, 'xxselectxxtoaddxx')
              .replaceAll(
                  '(####)', getTranslatedForCurrentUser(context, 'xxagentxx')),
          title:
              '${getTranslatedForCurrentUser(context, 'xxsetxx')} ${getTranslatedForCurrentUser(context, 'xxdepartmentmanagerxx')}',
          body: list.length == 0
              ? noDataWidget(
                  context: context,
                  title: getTranslatedForCurrentUser(
                          context, 'xxnoxxavailabletoaddxx')
                      .replaceAll('(####)',
                          getTranslatedForCurrentUser(context, 'xxagentxx')),
                  iconData: Icons.people)
              : ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Card(
                      color: widget.alreadyselecteduserid == list[i].id
                          ? lighten(Mycolors.green, .52)
                          : Color.fromRGBO(255, 255, 255, 1),
                      margin: EdgeInsets.fromLTRB(6, 8, 6, 2),
                      elevation: 0.4,
                      child: ListTile(
                        trailing: widget.alreadyselecteduserid == list[i].id
                            ? SizedBox(
                                height: 28,
                                width: 100,
                                child: roleBasedSticker(
                                    context, Usertype.departmentmanager.index))
                            : Chip(
                                label: Text(
                                    getTranslatedForCurrentUser(
                                            context, 'xxsetasxx')
                                        .replaceAll(
                                            '(####)',
                                            getTranslatedForCurrentUser(
                                                context, 'xxmanagerxx')),
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue[700],
                                    )),
                                backgroundColor: Colors.blue[50],
                              ),
                        leading: avatar(
                          imageUrl:
                              list[i].photourl == "" ? null : list[i].photourl,
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                          if (widget.alreadyselecteduserid != list[i].id) {
                            widget.selecteduser(list[i]);
                          }
                        },
                        title: Text(
                          list[i].fullname,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          "${getTranslatedForCurrentUser(context, 'xxidxx')} " +
                              list[i].id,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  }),
        )));
  }
}
