import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../l10n/l10n.dart';
import '../../../core/model/movie_response_model.dart';
import '../../../design_system/shartflix_colors.dart';
import '../../../design_system/shartflix_theme.dart';
import '../../../gen/assets.gen.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomePageForm extends StatefulWidget {
  const HomePageForm({super.key});

  @override
  _HomePageFormState createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_pageController.position.pixels >= _pageController.position.maxScrollExtent - 200) {
      context.read<HomeCubit>().loadMore();
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_onScroll);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShartflixTheme.buildTheme();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final selectedIndex = state.selectedIndexOrZero;
        final movies = state.moviesOrNull ?? [];

        return Theme(
          data: theme,
          child: Scaffold(
            backgroundColor: ShartflixColors.black,
            body: SafeArea(
              top: false,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  _buildHomePageContent(movies, theme, selectedIndex == 0 ? state : HomeState.initial()),
                  _buildProfileContent(context, state),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomNavBar(context, selectedIndex),
          ),
        );
      },
    );
  }

  Widget _buildHomePageContent(List<Movie> movies, ThemeData theme, HomeState state) {
    final state = context.watch<HomeCubit>().state;
    final movies = state.moviesOrNull ?? [];
    final isLoadingMore = state.isSuccess ? (state as dynamic).isLoadingMore : false;

    if (movies.isEmpty && !isLoadingMore) {
      return const Center(child: CircularProgressIndicator());
    }

    return PageView.builder(
      controller: PageController(),
      scrollDirection: Axis.vertical,
      itemCount: movies.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= movies.length) {
          return const Center(child: CircularProgressIndicator(color: Colors.white));
        }

        final movie = movies[index];
        final maxLength = 100;
        final plotText = movie.plot ?? '';
        final truncatedPlot = plotText.length > maxLength ? '${plotText.substring(0, maxLength)}... ' : plotText;

        if (index == movies.length - 1) {
          context.read<HomeCubit>().loadMore();
        }

        return Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                movie.poster ?? '',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/images/movie_empty.png', fit: BoxFit.fill);
                },
              ),
            ),
            Positioned(
              bottom: 100,
              right: 20,
              child: Container(
                width: 49,
                height: 71,
                decoration: BoxDecoration(
                  color: ShartflixColors.black.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: ShartflixColors.white.withValues(alpha: 0.2)),
                ),
                child: IconButton(
                  icon: SvgPicture.asset(
                    Assets.icons.like,
                    color: (movie.isFavorite ?? false) ? ShartflixColors.crimsonRed : Colors.white,
                  ),
                  onPressed: () => context.read<HomeCubit>().favoriteMovie(movie.movieId ?? ''),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withValues(alpha: 0.9), Colors.black.withValues(alpha: 0.0)],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 40, height: 40, child: SvgPicture.asset(Assets.icons.avatar)),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            movie.title ?? '',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                          const SizedBox(height: 6),
                          RichText(
                            text: TextSpan(
                              text: truncatedPlot,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(color: ShartflixColors.white.withValues(alpha: 0.9)),
                              children: [
                                if (plotText.length > maxLength)
                                  TextSpan(
                                    text: S.of(context)!.seeMore,
                                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 13),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Text(
                state.paginationOrNull?.currentPage.toString() ?? '',
                style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBottomNavBar(BuildContext context, int selectedIndex) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: ShartflixColors.black,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            context,
            icon: SvgPicture.asset(Assets.icons.home),
            label: S.of(context)!.home,
            index: 0,
            isSelected: selectedIndex == 0,
          ),
          _buildNavItem(
            context,
            icon: SvgPicture.asset(Assets.icons.profile),
            label: S.of(context)!.profile,
            index: 1,
            isSelected: selectedIndex == 1,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required SvgPicture icon,
    required String label,
    required int index,
    required bool isSelected,
  }) {
    final theme = ShartflixTheme.buildTheme();
    return GestureDetector(
      onTap: () async {
        if (index == 1 && context.read<HomeCubit>().state.userProfileResponseModelOrNull == null) {
          context.read<HomeCubit>().getProfile();
          context.read<HomeCubit>().getFavoriteMovies();
        }
        context.read<HomeCubit>().changeTab(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? ShartflixColors.white.withValues(alpha: 0.1) : Colors.transparent),
          color: isSelected ? ShartflixColors.black.withValues(alpha: 0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 6),
            Text(label, style: theme.textTheme.bodySmall?.copyWith(color: ShartflixColors.white)),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, HomeState state) {
    final theme = ShartflixTheme.buildTheme();
    final user = state.userProfileResponseModelOrNull;
    final userId = user?.id ?? '';
    final photoUrl = user?.photoUrl ?? '';
    final favoriteMovies = state.favoriteMoviesOrEmpty;

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 43, left: 16, right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ShartflixColors.white.withValues(alpha: 0.1)),
                    color: ShartflixColors.white.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                    onPressed: () => context.read<HomeCubit>().changeTab(0),
                  ),
                ),
                Spacer(),
                Text(S.of(context)!.profileDetail, style: theme.textTheme.headlineSmall),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => showLimitedOfferBottomSheet(context),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: ShartflixColors.crimsonRed,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.icons.pro),
                        const SizedBox(width: 4),
                        Text(
                          S.of(context)!.limitedOffer,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 31,
                    backgroundImage: NetworkImage(
                      photoUrl.isNotEmpty
                          ? photoUrl
                          : 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(state.userProfileResponseModelOrNull?.name ?? '', style: theme.textTheme.headlineSmall),
                        const SizedBox(height: 4),
                        Text("ID: ${userId.isNotEmpty ? userId : ''}", style: theme.textTheme.bodySmall),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ShartflixColors.crimsonRed,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(S.of(context)!.addPhoto, style: theme.textTheme.headlineLarge?.copyWith(fontSize: 13)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                S.of(context)!.myFavoriteMovies,
                style: theme.textTheme.headlineLarge?.copyWith(fontSize: 13),
              ),
            ),
            const SizedBox(height: 23),
            if (state.favoriteMoviesOrEmpty!.isNotEmpty) ...[
              GridView.builder(
                padding: EdgeInsets.only(left: 24, right: 24),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: favoriteMovies?.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            favoriteMovies?[index].movie?.poster ?? '',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset('assets/images/movie_empty.png', fit: BoxFit.fill);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        favoriteMovies?[index].movie?.title ?? '',
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        favoriteMovies?[index].movie?.director ?? '',
                        style: const TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  );
                },
              ),
            ] else ...[
              Center(
                child: Text(
                  S.of(context)!.noContentAvailable,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void showLimitedOfferBottomSheet(BuildContext context) {
    final theme = ShartflixTheme.buildTheme();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: ShartflixColors.black.withValues(alpha: 0.1),
      builder: (context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(color: ShartflixColors.white.withValues(alpha: 0)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [ShartflixColors.darkRed, ShartflixColors.black],
                    stops: [0.0, 1.0],
                    begin: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        S.of(context)!.limitedOffer,
                        style: theme.textTheme.headlineMedium?.copyWith(fontSize: 20, fontFamily: 'Montserrat'),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        child: Text(
                          S.of(context)!.chooseTokenPackage,
                          style: theme.textTheme.bodySmall?.copyWith(color: ShartflixColors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
                          color: ShartflixColors.white.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Text(
                              S.of(context)!.yourBonuses,
                              style: theme.textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                bonusItem(
                                  "assets/images/ic_container_bg.png",
                                  "assets/images/ic_premium.png",
                                  "Premium\nHesap",
                                ),
                                bonusItem(
                                  "assets/images/ic_container_bg.png",
                                  "assets/images/ic_match.png",
                                  "Daha\nFazla Eşleşme",
                                ),
                                bonusItem(
                                  "assets/images/ic_container_bg.png",
                                  "assets/images/ic_update.png",
                                  "Öne\nÇıkarma",
                                ),
                                bonusItem(
                                  "assets/images/ic_container_bg.png",
                                  "assets/images/ic_more_like.png",
                                  "Daha\nFazla Beğeni",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 21),
                      Text(S.of(context)!.selectTokenToUnlock, style: theme.textTheme.headlineSmall),
                      SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          jetonPackage(
                            "200",
                            "330",
                            "+10%",
                            "₺99,99",
                            colorTop: ShartflixColors.darkRed,
                            colorBottom: ShartflixColors.crimsonRed,
                          ),
                          jetonPackage(
                            "2.000",
                            "3.375",
                            "+70%",
                            "₺799,99",
                            colorTop: ShartflixColors.purple,
                            colorBottom: ShartflixColors.crimsonRed,
                          ),
                          jetonPackage(
                            "1.000",
                            "1.350",
                            "+35%",
                            "₺399,99",
                            colorTop: ShartflixColors.darkRed,
                            colorBottom: ShartflixColors.crimsonRed,
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      SafeArea(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ShartflixColors.crimsonRed,
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                          ),
                          child: Text(S.of(context)!.viewAllTokens, style: theme.textTheme.headlineSmall),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget bonusItem(String svgPathBottom, String svgPathTop, String label) {
    final theme = ShartflixTheme.buildTheme();
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [Image.asset(svgPathBottom, width: 55), Image.asset(svgPathTop, height: 35)],
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(color: ShartflixColors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget jetonPackage(
    String base,
    String total,
    String bonus,
    String price, {
    Color colorTop = const Color(0xFF5949E6),
    Color colorBottom = const Color(0xFFE50914),
  }) {
    final theme = ShartflixTheme.buildTheme();
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 217,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withValues(alpha: 0.4)),
              gradient: LinearGradient(
                colors: [colorTop, colorBottom],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(base, style: theme.textTheme.headlineSmall?.copyWith(decoration: TextDecoration.lineThrough)),

                Text(
                  total,
                  style: theme.textTheme.headlineLarge?.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Spacer(),
                Divider(color: ShartflixColors.white.withValues(alpha: 0.1)),
                Text(S.of(context)!.token, style: theme.textTheme.headlineSmall),
                Text(
                  price,
                  style: theme.textTheme.headlineLarge?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(S.of(context)!.perWeek, style: theme.textTheme.bodySmall?.copyWith(color: ShartflixColors.white)),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -5),
            child: Container(
              height: 25,
              width: 61,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withValues(alpha: 0.4)),
                gradient: LinearGradient(
                  colors: [colorTop, colorTop],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(textAlign: TextAlign.center, bonus, style: theme.textTheme.headlineSmall),
            ),
          ),
        ],
      ),
    );
  }
}
