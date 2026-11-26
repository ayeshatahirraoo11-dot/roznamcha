import 'package:material_ui/material_ui.dart';

/// Step 1 of Roznamcha: the welcome screen.
///
/// Read the whole file first. The comments name the idea each part shows.
/// Each `Placeholder` is a box that marks where a TODO goes; the app runs
/// before you start, and it looks like a wireframe.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Theme.of(context) walks up the tree to the MaterialApp and gives you
    // its colours and text styles. Never write a colour or a size by hand
    // when the theme already has it.
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      // SafeArea keeps the content away from the notch and the status bar.
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          // A Column lays its children out top to bottom.
          child: Column(
            children: [
              // TODO 6: Put a `const Spacer()` here, and another one just
              // above the button's Row, so the button sits at the bottom and
              // the rest is centred.
              // A Stack draws its children on top of each other: the circle
              // first, then whatever comes next.
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      color: colors.primaryContainer,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // TODO 2: Replace the SizedBox and its Placeholder with the
                  // illustration: Image.asset with the path
                  // 'assets/images/welcome.png', width 180 and height 180.
                  // Then list the file under `assets:` in pubspec.yaml, or the
                  // app can't find it.
                  const SizedBox(width: 180, height: 180, child: Placeholder()),
                ],
              ),
              const SizedBox(height: 32),
              // TODO 3: Add `final text = Theme.of(context).textTheme;` under
              // `colors` above. Then replace the Placeholder with two Text
              // widgets, centred:
              // the app name 'Roznamcha' in `text.displaySmall`, bold, in
              // `colors.primary`; a `SizedBox(height: 8)`; then the greeting
              // 'Assalam o Alaikum! Keep a diary of your days.' in
              // `text.bodyLarge`, in `colors.onSurfaceVariant`.
              const Placeholder(fallbackHeight: 96),
              const SizedBox(height: 24),
              // TODO 4: Replace the Placeholder with a Row of three FeatureItem
              // widgets (see the bottom of this file), each wrapped in an
              // Expanded so the three share the width equally:
              // Icons.edit_note 'Write', Icons.mood 'Mood', Icons.lock_outline
              // 'Private'.
              const Placeholder(fallbackHeight: 56),
              // TODO 5: Replace the Placeholder with the 'Get started' button:
              // a FilledButton whose onPressed is an empty function, `() {}`,
              // inside a Row and an Expanded, so it fills the width.
              const Placeholder(fallbackHeight: 40),
            ],
          ),
        ),
      ),
    );
  }
}

/// One small feature: an icon above a label. Composition: the screen is
/// built from three of these, not from three copies of the same code.
class FeatureItem extends StatelessWidget {
  const FeatureItem(this.icon, this.label, {super.key});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Icon(icon, size: 32, color: colors.primary),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}
