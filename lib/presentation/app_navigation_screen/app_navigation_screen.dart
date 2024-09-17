import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SizedBox(
          width: 375,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFF000000),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Column(
                            children: [
                              _buildScreenTitle(
                                context,
                                screenTitle: "Login Awal",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.loginAwalScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Login",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.loginScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Home",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.homeScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Tambah Siswa Bio",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.tambahSiswaBioScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Tambah Siswa Alamat",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.tambahSiswaAlamatScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Tambah Siswa Bio One",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.tambahSiswaBioOneScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Tambah Keterangan Sebelumnya",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.tambahKeteranganSebelumnyaScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Keterangan Ayah Murid",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.keteranganAyahMuridScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Keterangan Ibu Murid",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.keteranganIbuMuridScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Keterangan Ibu Murid One",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.keteranganIbuMuridOneScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Perkembangan Siswa",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.perkembanganSiswaScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Tambah Siswa Bio Two",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.tambahSiswaBioTwoScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "DATA Siswa versi 1",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.dataSiswaVersi1Screen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "DATA Siswa versi Two",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.dataSiswaVersiTwoScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "DATA Siswa versi 1 One",
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(context, AppRoutes.dataSiswaVersi1OneScreen),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 5),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
