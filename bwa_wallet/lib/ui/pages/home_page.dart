import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/pages/history_page.dart';
import 'package:bwa_wallet/ui/pages/reward_page.dart';
import 'package:bwa_wallet/ui/pages/statistic_page.dart';
import 'package:bwa_wallet/ui/widgets/home_friendly_tips.dart';
import 'package:bwa_wallet/ui/widgets/home_latest_transaction.dart';
import 'package:bwa_wallet/ui/widgets/home_service_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> menu = <Widget>[
    HomePage(),
    HistoryPage(),
    StatisticPage(),
    RewardPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: 'Overview'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_statistic.png',
                  width: 20,
                ),
                label: 'Statistic'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 20,
                ),
                label: 'Reward'),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              Text(
                'Adrayay',
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: const DecorationImage(
              image: AssetImage('assets/img_bg_card.png'), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Adri Fatwa',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 8),
          ),
          const SizedBox(
            height: 21,
          ),
          Text('Balance', style: whiteTextStyle),
          Text('Rp 2000000',
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold)),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Column(children: [
        Row(
          children: [
            Text(
              'Level 1',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            const Spacer(),
            Text(
              '55%',
              style: greenTextStyle.copyWith(fontWeight: semiBold),
            ),
            Text(
              'of \$10M',
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(55),
          child: LinearProgressIndicator(
            minHeight: 5,
            backgroundColor: lightBgColor,
            value: 0.55,
            valueColor: AlwaysStoppedAnimation(greenColor),
          ),
        )
      ]),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Do Something',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          HomeServiceItem(
            title: 'Top Up',
            icon: 'assets/ic_topup.png',
            onTap: () {},
          ),
          HomeServiceItem(
            title: 'Send',
            icon: 'assets/ic_send.png',
            onTap: () {},
          ),
          HomeServiceItem(
            title: 'Withdraw',
            icon: 'assets/ic_withdraw.png',
            onTap: () {},
          ),
          HomeServiceItem(
            title: 'More',
            icon: 'assets/ic_more.png',
            onTap: () {},
          ),
        ])
      ]),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Latest Transaction',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeLatestTransaction(
                    icon: 'assets/ic_transaction_cat1.png',
                    transaction: 'Top Up',
                    date: 'Yesterday',
                    number: '+ 450.000'),
                HomeLatestTransaction(
                    icon: 'assets/ic_transaction_cat2.png',
                    transaction: 'Cashback',
                    date: 'Sep 11',
                    number: '+ 22.000'),
                HomeLatestTransaction(
                    icon: 'assets/ic_transaction_cat3.png',
                    transaction: 'Withdraw',
                    date: 'Sep 2',
                    number: '- 50.000'),
                HomeLatestTransaction(
                    icon: 'assets/ic_transaction_cat4.png',
                    transaction: 'Transfer',
                    date: 'Aug 27',
                    number: '- 4.500.000'),
                HomeLatestTransaction(
                    icon: 'assets/ic_transaction_cat5.png',
                    transaction: 'Electric',
                    date: 'Feb 18',
                    number: '- 500.000'),
              ]),
        )
      ]),
    );
  }

  Widget buildSendAgain() {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 90,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/img_friend1.png'),
                            radius: 25,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            '@Chika',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                        ])),
                const SizedBox(
                  width: 17,
                ),
                Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 90,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/img_friend2.png'),
                            radius: 25,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            '@joni',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                        ])),
                const SizedBox(
                  width: 17,
                ),
                Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 90,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/img_friend3.png'),
                            radius: 25,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            '@ichi',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                        ])),
                const SizedBox(
                  width: 17,
                ),
                Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 90,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/img_friend4.png'),
                            radius: 25,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            '@tengen',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                        ])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
        padding: const EdgeInsets.only(top: 30, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friendly Tips',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              child: Wrap(
                spacing: 17,
                runSpacing: 18,
                children: [
                  HomeFriendlyTips(
                    image: 'assets/img_tips1.png',
                    tips: "Best tips for using a credit card",
                    url: Uri.parse('https://www.google.com'),
                  ),
                  HomeFriendlyTips(
                    image: 'assets/img_tips2.png',
                    tips: "Spot the good pie of finance model",
                    url: Uri.parse('https://www.google.com'),
                  ),
                  HomeFriendlyTips(
                    image: 'assets/img_tips3.png',
                    tips: "Great hack to get better advices",
                    url: Uri.parse('https://www.google.com'),
                  ),
                  HomeFriendlyTips(
                    image: 'assets/img_tips4.png',
                    tips: "Save more penny buy this instead",
                    url: Uri.parse('https://www.google.com'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
