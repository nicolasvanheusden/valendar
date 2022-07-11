import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/screen/analytics_screen.dart';
import 'package:valendar/presentation/screen/home_screen.dart';
import 'package:valendar/presentation/screen/team_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  int _selectedTabIndex = 0;
  late final List<Widget> _bodys;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _startContractController = TextEditingController();
  final TextEditingController _endContractController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isOverlayVisible = false;

  @override
  void initState() {
    super.initState();
    _bodys = const [
      HomeScreen(),
      AnalyticsScreen(),
      TeamScreen()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        bottom: false,
        child: IndexedStack(
          sizing: StackFit.expand,
          children: [
            Stack(
              children: [
                _bodys.elementAt(_selectedTabIndex),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ), 
                    margin: const EdgeInsets.only(bottom: 50),
                    elevation: 10,
                    shadowColor: whiteFAFAFA,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedTabIndex = 0;
                            });
                          },
                          icon: Icon(
                            Icons.home_rounded,
                            size: 40,
                            color: _selectedTabIndex == 0 ? blue064F60 : blue064F60.withOpacity(0.5),
                          )
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              _selectedTabIndex = 1;
                            });
                            
                            // TODO(nico): navigate to analytics screen
                          },
                          icon: Icon(
                            Icons.analytics_outlined,
                            size: 40,
                            color: _selectedTabIndex == 1 ? blue064F60 : blue064F60.withOpacity(0.5),
                          )
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              _selectedTabIndex = 2;
                            });
                            
                            // TODO(nico): display team screen
                          },
                          icon: Icon(
                            Icons.group_outlined,
                            size: 40,
                            color: _selectedTabIndex == 2 ? blue064F60 : blue064F60.withOpacity(0.5),
                          )
                        ),
                      ]),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Visibility(
                    visible: _isOverlayVisible,
                    child: _showModalOverlay()
                  ),
                )
              ],
            )
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Visibility(
        visible: _selectedTabIndex == 2 && !_isOverlayVisible,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: FloatingActionButton(
            elevation: 5,
            onPressed: () {
              setState(() {
                _isOverlayVisible = true;
              });
            },
            backgroundColor: yellowFFAD47,
            child: const Icon(
              Icons.add_rounded,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }

  Widget _showModalOverlay() {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal :10, vertical: 20),
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ajout membre d'équipe",
              style: GoogleFonts.montserrat(
                color: blue064F60,
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            TextFormField(
              controller: _nameController,
              enableSuggestions: false,
              decoration: InputDecoration(
                label: const Text('Nom'),
                labelStyle: GoogleFonts.montserrat(
                  color: blue064F60
                ),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Champs requis';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _roleController,
              enableSuggestions: false,
              decoration: InputDecoration(
                label: const Text('Poste'),
                labelStyle: GoogleFonts.montserrat(
                  color: blue064F60
                ),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Champs requis';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _startContractController,
              enableSuggestions: false,
              decoration: InputDecoration(
                label: const Text('Date de début de contrat'),
                hintText: 'AAAA-MM-JJ',
                labelStyle: GoogleFonts.montserrat(
                  color: blue064F60
                ),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Champs requis';
                }
                if (RegExp(r'\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])').stringMatch(value ?? '') == value!) {
                  return null;
                } else {
                  return 'Champs mal formaté';
                }
              },
            ),
            TextFormField(
              controller: _endContractController,
              enableSuggestions: false,
              decoration: InputDecoration(
                label: const Text('Date de fin de contrat'),
                hintText: 'AAAA-MM-JJ',
                labelStyle: GoogleFonts.montserrat(
                  color: blue064F60
                ),
              ),
              validator: (value) {
                if(value?.isEmpty ?? true) {
                  return null;
                }
                if (RegExp(r'\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])').stringMatch(value ?? '') == value) {
                  return null;
                } else {
                  return 'Champs mal formaté';
                }  
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      _isOverlayVisible = false;
                    });
                    BlocProvider.of<MemberBloc>(context).add(
                      MemberEvent.addMember(
                        Member(
                          name: _nameController.text,
                          role: _roleController.text,
                          startContract: DateTime.parse(_startContractController.text),
                          endContract: _endContractController.text.isEmpty
                            ? null
                            : DateTime.parse(_endContractController.text)
                        )
                      )
                    );
                    _nameController.clear();
                    _roleController.clear();
                    _startContractController.clear();
                    _endContractController.clear();
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(yellowFFAD47),
                  fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ))
                ),
                child: Text(
                  'Ajouter',
                  style: GoogleFonts.montserrat(
                    color: whiteFAFAFA,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                )
              ),
            )
          ],
        ),
      )
    );   
  }

}