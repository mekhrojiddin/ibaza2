import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibaza/assets/icons.dart';
import 'package:ibaza/features/pages/navbar.dart';
import 'package:ibaza/features/pages/navbar_item.dart';
import 'package:ibaza/features/pages/navigator.dart';

enum NavItemEnum { asosiy, katalog, buyurtmalar, savatcha, profil }

class HomeScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const HomeScreen());

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _controller;
  late double navBarWidth;

  late AnimationController controller;
  final Map<NavItemEnum, GlobalKey<NavigatorState>> _navigatorKeys = {
    NavItemEnum.asosiy: GlobalKey<NavigatorState>(),
    NavItemEnum.katalog: GlobalKey<NavigatorState>(),
    NavItemEnum.buyurtmalar: GlobalKey<NavigatorState>(),
    NavItemEnum.savatcha: GlobalKey<NavigatorState>(),
    NavItemEnum.profil: GlobalKey<NavigatorState>(),
  };

  List<NavBar> labels = [];

  int _currentIndex = 0;
  int currentPage = 0;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));

    _controller = TabController(length: 5, vsync: this);
    controller.addListener(() {});
    _controller.addListener(onTabChange);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onTabChange() {
    setState(() => _currentIndex = _controller.index);
  }

  Widget _buildPageNavigator(NavItemEnum tabItem) => TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      );

  void changePage(int index) {
    setState(() => _currentIndex = index);
    _controller.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    labels = const [
      NavBar(id: 0, icon: AppIcons.home, title: "Asosiy"),
      NavBar(id: 1, icon: AppIcons.katalog, title: "Katalog"),
      NavBar(id: 2, icon: AppIcons.buyurtma, title: "Buyurtma"),
      NavBar(id: 3, icon: AppIcons.savatcha, title: "Savatcha"),
      NavBar(id: 4, icon: AppIcons.profile, title: "Profile"),
    ];

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        // systemNavigationBarColor: white,
      ),
      child: HomeTabControllerProvider(
        controller: _controller,
        child: WillPopScope(
          onWillPop: () async {
            final isFirstRouteInCurrentTab =
                !await _navigatorKeys[NavItemEnum.values[_currentIndex]]!
                    .currentState!
                    .maybePop();
            if (isFirstRouteInCurrentTab) {
              if (NavItemEnum.values[_currentIndex] != NavItemEnum.asosiy) {
                changePage(0);
                return false;
              }
            }
            return isFirstRouteInCurrentTab;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            bottomNavigationBar: Container(
              height: 70 + MediaQuery.of(context).padding.bottom,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                // color: navigationBarBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff1F211C).withOpacity(0.08),
                    blurRadius: 30,
                    offset: const Offset(0, -4),
                  )
                ],
              ),
              child: TabBar(
                enableFeedback: true,
                onTap: (index) {},
                indicator: const BoxDecoration(),
                controller: _controller,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  TabItemWidget(
                    onActiveTap: () {
                      _navigatorKeys[NavItemEnum.values[_currentIndex]]
                          ?.currentState
                          ?.popUntil((route) => route.isFirst);
                    },
                    isActive: _currentIndex == 0,
                    item: labels[0],
                  ),
                  TabItemWidget(
                    onActiveTap: () {
                      _navigatorKeys[NavItemEnum.values[_currentIndex]]
                          ?.currentState
                          ?.popUntil((route) => route.isFirst);
                    },
                    isActive: _currentIndex == 1,
                    item: labels[1],
                  ),
                  TabItemWidget(
                    onActiveTap: () {
                      _navigatorKeys[NavItemEnum.values[_currentIndex]]
                          ?.currentState
                          ?.popUntil((route) => route.isFirst);
                    },
                    isActive: _currentIndex == 2,
                    item: labels[2],
                  ),
                  TabItemWidget(
                    onActiveTap: () {
                      _navigatorKeys[NavItemEnum.values[_currentIndex]]
                          ?.currentState
                          ?.popUntil((route) => route.isFirst);
                    },
                    isActive: _currentIndex == 3,
                    item: labels[3],
                  ),
                  TabItemWidget(
                    onActiveTap: () {
                      _navigatorKeys[NavItemEnum.values[_currentIndex]]
                          ?.currentState
                          ?.popUntil((route) => route.isFirst);
                    },
                    isActive: _currentIndex == 4,
                    item: labels[4],
                  ),
                ],
              ),
            ),
            body: TabBarView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildPageNavigator(NavItemEnum.asosiy),
                _buildPageNavigator(NavItemEnum.katalog),
                _buildPageNavigator(NavItemEnum.buyurtmalar),
                _buildPageNavigator(NavItemEnum.savatcha),
                _buildPageNavigator(NavItemEnum.profil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTabControllerProvider extends InheritedWidget {
  const HomeTabControllerProvider({
    required Widget child,
    required this.controller,
    Key? key,
  }) : super(key: key, child: child);

  final TabController controller;

  @override
  bool updateShouldNotify(HomeTabControllerProvider oldWidget) => false;

  static HomeTabControllerProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeTabControllerProvider>()!;
}
