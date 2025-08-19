import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/quick_access_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/quick_access_screen/cubit/quick_access_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QuickAccessScreen extends StatelessWidget {
  static const routeName = '/quickAccessScreen';
  const QuickAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<QuickAccessCubit>(),
      child: const _QuickAccessScreenLayout(),
    );
  }
}

class _QuickAccessScreenLayout extends StatelessWidget {
  const _QuickAccessScreenLayout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Intranet',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<QuickAccessCubit, QuickAccessState>(
        builder: (context, state) {
          if (state.status == QuickAccessStatus.loading) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Loading quick access links...'),
                ],
              ),
            );
          }
          if (state.status == QuickAccessStatus.error) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    state.errorMessage ?? 'Something went wrong',
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<QuickAccessCubit>().fetchQuickAccessData(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }
          if (state.status == QuickAccessStatus.loaded) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Links',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Access your most used resources quickly',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 24),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.sections.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 24),
                    itemBuilder: (context, index) {
                      final section = state.sections[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              section.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: section.cards.length,
                              itemBuilder: (context, cardIndex) {
                                final card = section.cards[cardIndex];
                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 4,
                                    right: cardIndex == section.cards.length - 1
                                        ? 0
                                        : 12,
                                  ),
                                  child: _buildCard(context, card),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, QuickAccessCard card) {
    final isYoutubeUrl =
        card.link.contains('youtube.com') || card.link.contains('youtu.be');

    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(16),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () async {
          if (isYoutubeUrl) {
            await _showYoutubePlayer(context, card.link);
          } else {
            if (await canLaunchUrlString(card.link)) {
              await launchUrlString(card.link,
                  mode: LaunchMode.externalApplication);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Could not launch ${card.link}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          }
        },
        child: Container(
          width: 160,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isYoutubeUrl
                      ? Icons.play_circle_outline
                      : Icons.link_outlined,
                  size: 36,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                card.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                isYoutubeUrl ? 'Tap to play' : 'Tap to open',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showYoutubePlayer(BuildContext context, String url) async {
    final videoId = _extractYoutubeId(url);
    if (videoId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid YouTube URL'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubePlayerScreen(videoId: videoId),
      ),
    );
  }

  String? _extractYoutubeId(String url) {
    final regExp = RegExp(
      r'^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*',
      caseSensitive: false,
    );
    final match = regExp.firstMatch(url);
    return (match != null && match.group(2)!.length == 11)
        ? match.group(2)
        : null;
  }
}

class YoutubePlayerScreen extends StatefulWidget {
  final String videoId;

  const YoutubePlayerScreen({super.key, required this.videoId});

  @override
  State<YoutubePlayerScreen> createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  late YoutubePlayerController _controller;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
      ),
    );

    // Listen to fullscreen changes
    _controller.addListener(_listener);
  }

  void _listener() {
    if (_isFullScreen != _controller.value.isFullScreen) {
      setState(() {
        _isFullScreen = _controller.value.isFullScreen;
      });

      // Update system UI when entering/exiting fullscreen
      if (_isFullScreen) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      } else {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      }
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    // Restore system UI to normal when exiting
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Only show app bar when not in fullscreen mode
      appBar: _isFullScreen
          ? null
          : AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text('Video Player'),
              backgroundColor: Colors.black,
            ),
      body: SafeArea(
        // Maintain safe area only when not in fullscreen
        maintainBottomViewPadding: !_isFullScreen,
        top: !_isFullScreen,
        bottom: !_isFullScreen,
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            aspectRatio: 16 / 9,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            progressColors: const ProgressBarColors(
              playedColor: Colors.blueAccent,
              handleColor: Colors.blueAccent,
            ),
            onEnded: (data) => Navigator.of(context).pop(),
          ),
          builder: (context, player) {
            return _isFullScreen
                ? player // Fullscreen takes entire space
                : Column(
                    children: [
                      player,
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Swipe down to close player',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
