// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farbauswahl_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedColor)
const selectedColorProvider = SelectedColorProvider._();

final class SelectedColorProvider
    extends $NotifierProvider<SelectedColor, Color> {
  const SelectedColorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedColorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedColorHash();

  @$internal
  @override
  SelectedColor create() => SelectedColor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Color value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Color>(value),
    );
  }
}

String _$selectedColorHash() => r'3c509d535bbb515c90db3d124685e78c9fe4846d';

abstract class _$SelectedColor extends $Notifier<Color> {
  Color build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Color, Color>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Color, Color>,
              Color,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
