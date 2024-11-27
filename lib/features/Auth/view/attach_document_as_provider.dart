import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class AttachDocumentAsProvider extends StatefulWidget {
  const AttachDocumentAsProvider({super.key});

  @override
  State<AttachDocumentAsProvider> createState() =>
      _AttachDocumentAsProviderState();
}

class _AttachDocumentAsProviderState extends State<AttachDocumentAsProvider> {
  final TextEditingController carNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: h,
          width: w,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.07),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(h * 0.09),
                  Image.asset(
                    'assets/images/logo.png',
                    width: w * 0.4,
                  ),
                  Gap(h * 0.02),
                  AutoSizeText(
                    'attach_the_following_documents:'.tr(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Gap(h * 0.02),
                  Container(
                    width: double.infinity,
                    height: 0.2 * h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images/fille_icon.svg'),
                            Gap(h * 0.01),
                            AutoSizeText(
                              'attach_company_documents_commercial_register'
                                  .tr(),
                              maxFontSize: 12,
                              minFontSize: 8,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Gap(h * 0.01),
                            AutoSizeText(
                              'the_file_size_must_not_exceed_24_MB'.tr(),
                              maxFontSize: 12,
                              minFontSize: 8,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const AutoSizeText(
                              maxFontSize: 12,
                              minFontSize: 8,
                              'pdf - jpg - svg',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(h * 0.02),
                  Container(
                    width: double.infinity,
                    height: 0.2 * h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images/fille_icon.svg'),
                            Gap(h * 0.01),
                            AutoSizeText(
                              'attach_company_documents_commercial_register'
                                  .tr(),
                              maxFontSize: 12,
                              minFontSize: 8,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Gap(h * 0.01),
                            AutoSizeText(
                              'the_file_size_must_not_exceed_24_MB'.tr(),
                              maxFontSize: 12,
                              minFontSize: 8,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const AutoSizeText(
                              maxFontSize: 12,
                              minFontSize: 8,
                              'pdf - jpg - svg',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(h * 0.02),
                  Container(
                    width: double.infinity,
                    height: 0.2 * h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images/fille_icon.svg'),
                            Gap(h * 0.01),
                            AutoSizeText(
                              'attach_company_documents_commercial_register'
                                  .tr(),
                              maxFontSize: 12,
                              minFontSize: 8,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Gap(h * 0.01),
                            AutoSizeText(
                              'the_file_size_must_not_exceed_24_MB'.tr(),
                              maxFontSize: 12,
                              minFontSize: 8,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const AutoSizeText(
                              maxFontSize: 12,
                              minFontSize: 8,
                              'pdf - jpg - svg',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(0.04 * h),
                  Container(
                    width: double.infinity,
                    height: 0.06 * h,
                    decoration: BoxDecoration(
                      color: const Color(0XFF1C26E4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'submit_documents'.tr(),
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                  Gap(0.02 * h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
