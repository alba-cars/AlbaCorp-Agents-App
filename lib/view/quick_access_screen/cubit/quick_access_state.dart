part of 'quick_access_cubit.dart';

enum QuickAccessStatus { initial, loading, loaded, error }

class QuickAccessState extends Equatable {
  final QuickAccessStatus status;
  final List<QuickAccessSection> sections;
  final String? errorMessage;

  const QuickAccessState({
    this.status = QuickAccessStatus.initial,
    this.sections = const [],
    this.errorMessage,
  });

  QuickAccessState copyWith({
    QuickAccessStatus? status,
    List<QuickAccessSection>? sections,
    String? errorMessage,
  }) {
    return QuickAccessState(
      status: status ?? this.status,
      sections: sections ?? this.sections,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, sections, errorMessage];
}
