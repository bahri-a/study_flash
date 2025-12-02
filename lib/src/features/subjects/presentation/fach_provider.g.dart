// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fach_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FachNotifier)
const fachProvider = FachNotifierProvider._();

final class FachNotifierProvider
    extends $NotifierProvider<FachNotifier, List<Fach>> {
  const FachNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fachProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fachNotifierHash();

  @$internal
  @override
  FachNotifier create() => FachNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Fach> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Fach>>(value),
    );
  }
}

String _$fachNotifierHash() => r'e3c70d57198b629638c4d34da0b094c4723f5f28';

abstract class _$FachNotifier extends $Notifier<List<Fach>> {
  List<Fach> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Fach>, List<Fach>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Fach>, List<Fach>>,
              List<Fach>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
