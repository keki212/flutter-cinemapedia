// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FavoriteMoviesTable extends FavoriteMovies
    with TableInfo<$FavoriteMoviesTable, FavoriteMovy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteMoviesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _movieIdMeta = const VerificationMeta(
    'movieId',
  );
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
    'movie_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _backdropPathMeta = const VerificationMeta(
    'backdropPath',
  );
  @override
  late final GeneratedColumn<String> backdropPath = GeneratedColumn<String>(
    'backdrop_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalTitleMeta = const VerificationMeta(
    'originalTitle',
  );
  @override
  late final GeneratedColumn<String> originalTitle = GeneratedColumn<String>(
    'original_title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 255,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _posterPathMeta = const VerificationMeta(
    'posterPath',
  );
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
    'poster_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 255,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _voteAverageMeta = const VerificationMeta(
    'voteAverage',
  );
  @override
  late final GeneratedColumn<double> voteAverage = GeneratedColumn<double>(
    'vote_average',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _overviewMeta = const VerificationMeta(
    'overview',
  );
  @override
  late final GeneratedColumn<String> overview = GeneratedColumn<String>(
    'overview',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _releaseDateMeta = const VerificationMeta(
    'releaseDate',
  );
  @override
  late final GeneratedColumn<DateTime> releaseDate = GeneratedColumn<DateTime>(
    'release_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    movieId,
    backdropPath,
    originalTitle,
    posterPath,
    title,
    voteAverage,
    overview,
    releaseDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_movies';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteMovy> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
        _backdropPathMeta,
        backdropPath.isAcceptableOrUnknown(
          data['backdrop_path']!,
          _backdropPathMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_backdropPathMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
        _originalTitleMeta,
        originalTitle.isAcceptableOrUnknown(
          data['original_title']!,
          _originalTitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('poster_path')) {
      context.handle(
        _posterPathMeta,
        posterPath.isAcceptableOrUnknown(data['poster_path']!, _posterPathMeta),
      );
    } else if (isInserting) {
      context.missing(_posterPathMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
        _voteAverageMeta,
        voteAverage.isAcceptableOrUnknown(
          data['vote_average']!,
          _voteAverageMeta,
        ),
      );
    }
    if (data.containsKey('overview')) {
      context.handle(
        _overviewMeta,
        overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta),
      );
    }
    if (data.containsKey('release_date')) {
      context.handle(
        _releaseDateMeta,
        releaseDate.isAcceptableOrUnknown(
          data['release_date']!,
          _releaseDateMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteMovy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteMovy(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      movieId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}movie_id'],
      )!,
      backdropPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}backdrop_path'],
      )!,
      originalTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_title'],
      )!,
      posterPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_path'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      voteAverage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vote_average'],
      )!,
      overview: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}overview'],
      ),
      releaseDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}release_date'],
      ),
    );
  }

  @override
  $FavoriteMoviesTable createAlias(String alias) {
    return $FavoriteMoviesTable(attachedDatabase, alias);
  }
}

class FavoriteMovy extends DataClass implements Insertable<FavoriteMovy> {
  final int id;
  final int movieId;
  final String backdropPath;
  final String originalTitle;
  final String posterPath;
  final String title;
  final double voteAverage;
  final String? overview;
  final DateTime? releaseDate;
  const FavoriteMovy({
    required this.id,
    required this.movieId,
    required this.backdropPath,
    required this.originalTitle,
    required this.posterPath,
    required this.title,
    required this.voteAverage,
    this.overview,
    this.releaseDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<int>(movieId);
    map['backdrop_path'] = Variable<String>(backdropPath);
    map['original_title'] = Variable<String>(originalTitle);
    map['poster_path'] = Variable<String>(posterPath);
    map['title'] = Variable<String>(title);
    map['vote_average'] = Variable<double>(voteAverage);
    if (!nullToAbsent || overview != null) {
      map['overview'] = Variable<String>(overview);
    }
    if (!nullToAbsent || releaseDate != null) {
      map['release_date'] = Variable<DateTime>(releaseDate);
    }
    return map;
  }

  FavoriteMoviesCompanion toCompanion(bool nullToAbsent) {
    return FavoriteMoviesCompanion(
      id: Value(id),
      movieId: Value(movieId),
      backdropPath: Value(backdropPath),
      originalTitle: Value(originalTitle),
      posterPath: Value(posterPath),
      title: Value(title),
      voteAverage: Value(voteAverage),
      overview: overview == null && nullToAbsent
          ? const Value.absent()
          : Value(overview),
      releaseDate: releaseDate == null && nullToAbsent
          ? const Value.absent()
          : Value(releaseDate),
    );
  }

  factory FavoriteMovy.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteMovy(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<int>(json['movieId']),
      backdropPath: serializer.fromJson<String>(json['backdropPath']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      title: serializer.fromJson<String>(json['title']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
      overview: serializer.fromJson<String?>(json['overview']),
      releaseDate: serializer.fromJson<DateTime?>(json['releaseDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<int>(movieId),
      'backdropPath': serializer.toJson<String>(backdropPath),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'posterPath': serializer.toJson<String>(posterPath),
      'title': serializer.toJson<String>(title),
      'voteAverage': serializer.toJson<double>(voteAverage),
      'overview': serializer.toJson<String?>(overview),
      'releaseDate': serializer.toJson<DateTime?>(releaseDate),
    };
  }

  FavoriteMovy copyWith({
    int? id,
    int? movieId,
    String? backdropPath,
    String? originalTitle,
    String? posterPath,
    String? title,
    double? voteAverage,
    Value<String?> overview = const Value.absent(),
    Value<DateTime?> releaseDate = const Value.absent(),
  }) => FavoriteMovy(
    id: id ?? this.id,
    movieId: movieId ?? this.movieId,
    backdropPath: backdropPath ?? this.backdropPath,
    originalTitle: originalTitle ?? this.originalTitle,
    posterPath: posterPath ?? this.posterPath,
    title: title ?? this.title,
    voteAverage: voteAverage ?? this.voteAverage,
    overview: overview.present ? overview.value : this.overview,
    releaseDate: releaseDate.present ? releaseDate.value : this.releaseDate,
  );
  FavoriteMovy copyWithCompanion(FavoriteMoviesCompanion data) {
    return FavoriteMovy(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      backdropPath: data.backdropPath.present
          ? data.backdropPath.value
          : this.backdropPath,
      originalTitle: data.originalTitle.present
          ? data.originalTitle.value
          : this.originalTitle,
      posterPath: data.posterPath.present
          ? data.posterPath.value
          : this.posterPath,
      title: data.title.present ? data.title.value : this.title,
      voteAverage: data.voteAverage.present
          ? data.voteAverage.value
          : this.voteAverage,
      overview: data.overview.present ? data.overview.value : this.overview,
      releaseDate: data.releaseDate.present
          ? data.releaseDate.value
          : this.releaseDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMovy(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPath: $posterPath, ')
          ..write('title: $title, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('overview: $overview, ')
          ..write('releaseDate: $releaseDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    movieId,
    backdropPath,
    originalTitle,
    posterPath,
    title,
    voteAverage,
    overview,
    releaseDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteMovy &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.backdropPath == this.backdropPath &&
          other.originalTitle == this.originalTitle &&
          other.posterPath == this.posterPath &&
          other.title == this.title &&
          other.voteAverage == this.voteAverage &&
          other.overview == this.overview &&
          other.releaseDate == this.releaseDate);
}

class FavoriteMoviesCompanion extends UpdateCompanion<FavoriteMovy> {
  final Value<int> id;
  final Value<int> movieId;
  final Value<String> backdropPath;
  final Value<String> originalTitle;
  final Value<String> posterPath;
  final Value<String> title;
  final Value<double> voteAverage;
  final Value<String?> overview;
  final Value<DateTime?> releaseDate;
  const FavoriteMoviesCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.title = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.overview = const Value.absent(),
    this.releaseDate = const Value.absent(),
  });
  FavoriteMoviesCompanion.insert({
    this.id = const Value.absent(),
    required int movieId,
    required String backdropPath,
    required String originalTitle,
    required String posterPath,
    required String title,
    this.voteAverage = const Value.absent(),
    this.overview = const Value.absent(),
    this.releaseDate = const Value.absent(),
  }) : movieId = Value(movieId),
       backdropPath = Value(backdropPath),
       originalTitle = Value(originalTitle),
       posterPath = Value(posterPath),
       title = Value(title);
  static Insertable<FavoriteMovy> custom({
    Expression<int>? id,
    Expression<int>? movieId,
    Expression<String>? backdropPath,
    Expression<String>? originalTitle,
    Expression<String>? posterPath,
    Expression<String>? title,
    Expression<double>? voteAverage,
    Expression<String>? overview,
    Expression<DateTime>? releaseDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (originalTitle != null) 'original_title': originalTitle,
      if (posterPath != null) 'poster_path': posterPath,
      if (title != null) 'title': title,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (overview != null) 'overview': overview,
      if (releaseDate != null) 'release_date': releaseDate,
    });
  }

  FavoriteMoviesCompanion copyWith({
    Value<int>? id,
    Value<int>? movieId,
    Value<String>? backdropPath,
    Value<String>? originalTitle,
    Value<String>? posterPath,
    Value<String>? title,
    Value<double>? voteAverage,
    Value<String?>? overview,
    Value<DateTime?>? releaseDate,
  }) {
    return FavoriteMoviesCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      backdropPath: backdropPath ?? this.backdropPath,
      originalTitle: originalTitle ?? this.originalTitle,
      posterPath: posterPath ?? this.posterPath,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String>(backdropPath.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<DateTime>(releaseDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMoviesCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPath: $posterPath, ')
          ..write('title: $title, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('overview: $overview, ')
          ..write('releaseDate: $releaseDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FavoriteMoviesTable favoriteMovies = $FavoriteMoviesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteMovies];
}

typedef $$FavoriteMoviesTableCreateCompanionBuilder =
    FavoriteMoviesCompanion Function({
      Value<int> id,
      required int movieId,
      required String backdropPath,
      required String originalTitle,
      required String posterPath,
      required String title,
      Value<double> voteAverage,
      Value<String?> overview,
      Value<DateTime?> releaseDate,
    });
typedef $$FavoriteMoviesTableUpdateCompanionBuilder =
    FavoriteMoviesCompanion Function({
      Value<int> id,
      Value<int> movieId,
      Value<String> backdropPath,
      Value<String> originalTitle,
      Value<String> posterPath,
      Value<String> title,
      Value<double> voteAverage,
      Value<String?> overview,
      Value<DateTime?> releaseDate,
    });

class $$FavoriteMoviesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoriteMoviesTable> {
  $$FavoriteMoviesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get backdropPath => $composableBuilder(
    column: $table.backdropPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get overview => $composableBuilder(
    column: $table.overview,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get releaseDate => $composableBuilder(
    column: $table.releaseDate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavoriteMoviesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoriteMoviesTable> {
  $$FavoriteMoviesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get backdropPath => $composableBuilder(
    column: $table.backdropPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get overview => $composableBuilder(
    column: $table.overview,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get releaseDate => $composableBuilder(
    column: $table.releaseDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoriteMoviesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoriteMoviesTable> {
  $$FavoriteMoviesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<String> get backdropPath => $composableBuilder(
    column: $table.backdropPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => column,
  );

  GeneratedColumn<String> get overview =>
      $composableBuilder(column: $table.overview, builder: (column) => column);

  GeneratedColumn<DateTime> get releaseDate => $composableBuilder(
    column: $table.releaseDate,
    builder: (column) => column,
  );
}

class $$FavoriteMoviesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoriteMoviesTable,
          FavoriteMovy,
          $$FavoriteMoviesTableFilterComposer,
          $$FavoriteMoviesTableOrderingComposer,
          $$FavoriteMoviesTableAnnotationComposer,
          $$FavoriteMoviesTableCreateCompanionBuilder,
          $$FavoriteMoviesTableUpdateCompanionBuilder,
          (
            FavoriteMovy,
            BaseReferences<_$AppDatabase, $FavoriteMoviesTable, FavoriteMovy>,
          ),
          FavoriteMovy,
          PrefetchHooks Function()
        > {
  $$FavoriteMoviesTableTableManager(
    _$AppDatabase db,
    $FavoriteMoviesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoriteMoviesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoriteMoviesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoriteMoviesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<String> backdropPath = const Value.absent(),
                Value<String> originalTitle = const Value.absent(),
                Value<String> posterPath = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<double> voteAverage = const Value.absent(),
                Value<String?> overview = const Value.absent(),
                Value<DateTime?> releaseDate = const Value.absent(),
              }) => FavoriteMoviesCompanion(
                id: id,
                movieId: movieId,
                backdropPath: backdropPath,
                originalTitle: originalTitle,
                posterPath: posterPath,
                title: title,
                voteAverage: voteAverage,
                overview: overview,
                releaseDate: releaseDate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int movieId,
                required String backdropPath,
                required String originalTitle,
                required String posterPath,
                required String title,
                Value<double> voteAverage = const Value.absent(),
                Value<String?> overview = const Value.absent(),
                Value<DateTime?> releaseDate = const Value.absent(),
              }) => FavoriteMoviesCompanion.insert(
                id: id,
                movieId: movieId,
                backdropPath: backdropPath,
                originalTitle: originalTitle,
                posterPath: posterPath,
                title: title,
                voteAverage: voteAverage,
                overview: overview,
                releaseDate: releaseDate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoriteMoviesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoriteMoviesTable,
      FavoriteMovy,
      $$FavoriteMoviesTableFilterComposer,
      $$FavoriteMoviesTableOrderingComposer,
      $$FavoriteMoviesTableAnnotationComposer,
      $$FavoriteMoviesTableCreateCompanionBuilder,
      $$FavoriteMoviesTableUpdateCompanionBuilder,
      (
        FavoriteMovy,
        BaseReferences<_$AppDatabase, $FavoriteMoviesTable, FavoriteMovy>,
      ),
      FavoriteMovy,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FavoriteMoviesTableTableManager get favoriteMovies =>
      $$FavoriteMoviesTableTableManager(_db, _db.favoriteMovies);
}
