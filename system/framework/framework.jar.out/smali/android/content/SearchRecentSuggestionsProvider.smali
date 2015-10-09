.class public Landroid/content/SearchRecentSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SearchRecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_MODE_2LINES:I = 0x2

.field public static final DATABASE_MODE_QUERIES:I = 0x1

.field private static final DATABASE_VERSION:I = 0x200

.field private static final NULL_COLUMN:Ljava/lang/String; = "query"

.field private static final ORDER_BY:Ljava/lang/String; = "date DESC"

.field private static final TAG:Ljava/lang/String; = "SuggestionsProvider"

.field private static final URI_MATCH_SUGGEST:I = 0x1

.field private static final sDatabaseName:Ljava/lang/String; = "suggestions.db"

.field private static final sSuggestions:Ljava/lang/String; = "suggestions"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMode:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSuggestSuggestionClause:Ljava/lang/String;

.field private mSuggestionProjection:[Ljava/lang/String;

.field private mSuggestionsUri:Landroid/net/Uri;

.field private mTwoLineDisplay:Z

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 226
    iget-object v4, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 228
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 229
    .local v3, "length":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 230
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "base":Ljava/lang/String;
    const/4 v1, 0x0

    .line 235
    .local v1, "count":I
    const-string/jumbo v4, "suggestions"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    const-string/jumbo v4, "suggestions"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 241
    return v1

    .line 238
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 250
    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 251
    const-string/jumbo v2, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 260
    :goto_0
    return-object v2

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 254
    .local v1, "length":I
    if-lt v1, v4, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    .local v0, "base":Ljava/lang/String;
    const-string/jumbo v2, "suggestions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    if-ne v1, v4, :cond_1

    .line 258
    const-string/jumbo v2, "vnd.android.cursor.dir/suggestion"

    goto :goto_0

    .line 259
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 260
    const-string/jumbo v2, "vnd.android.cursor.item/suggestion"

    goto :goto_0

    .line 264
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown Uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 273
    iget-object v6, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 275
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 276
    .local v2, "length":I
    if-ge v2, v8, :cond_0

    .line 277
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 280
    :cond_0
    const-wide/16 v4, -0x1

    .line 281
    .local v4, "rowID":J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "base":Ljava/lang/String;
    const/4 v3, 0x0

    .line 283
    .local v3, "newUri":Landroid/net/Uri;
    const-string/jumbo v6, "suggestions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    if-ne v2, v8, :cond_1

    .line 285
    const-string/jumbo v6, "suggestions"

    const-string/jumbo v7, "query"

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 286
    cmp-long v6, v4, v9

    if-lez v6, :cond_1

    .line 287
    iget-object v6, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 291
    :cond_1
    cmp-long v6, v4, v9

    if-gez v6, :cond_2

    .line 292
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 294
    :cond_2
    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 295
    return-object v3
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    if-nez v1, :cond_1

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider not configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_1
    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    add-int/lit16 v0, v1, 0x200

    .line 308
    .local v0, "mWorkingDbVersion":I
    new-instance v1, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 310
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 324
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 327
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const/4 v5, 0x0

    .line 329
    .local v5, "suggestSelection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 340
    .local v6, "myArgs":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "suggestions"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 342
    .local v16, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 385
    .end local v5    # "suggestSelection":Ljava/lang/String;
    .end local v6    # "myArgs":[Ljava/lang/String;
    :goto_1
    return-object v16

    .line 331
    .end local v16    # "c":Landroid/database/Cursor;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 332
    .local v18, "like":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v3, :cond_1

    .line 333
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v6, v3

    const/4 v3, 0x1

    aput-object v18, v6, v3

    .line 337
    .restart local v6    # "myArgs":[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    .restart local v5    # "suggestSelection":Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v5    # "suggestSelection":Ljava/lang/String;
    .end local v6    # "myArgs":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v6, v3

    .restart local v6    # "myArgs":[Ljava/lang/String;
    goto :goto_2

    .line 347
    .end local v6    # "myArgs":[Ljava/lang/String;
    .end local v18    # "like":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    .line 348
    .local v17, "length":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    .line 349
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown Uri"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 352
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 353
    .local v8, "base":Ljava/lang/String;
    const-string/jumbo v3, "suggestions"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown Uri"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_4
    const/4 v9, 0x0

    .line 358
    .local v9, "useProjection":[Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_5

    .line 359
    move-object/from16 v0, p2

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    .line 360
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    move-object/from16 v0, p2

    array-length v3, v0

    const-string v4, "_id AS _id"

    aput-object v4, v9, v3

    .line 364
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 365
    .local v19, "whereClause":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_6

    .line 366
    const-string v3, "(_id = "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 371
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 372
    const-string v3, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_7
    const/16 v3, 0x28

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/16 v3, 0x29

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v7, v2

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 384
    .restart local v16    # "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method protected setupSuggestions(Ljava/lang/String;I)V
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 179
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    .line 182
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    .line 183
    iput p2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/suggestions"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    .line 187
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 188
    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v3, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v4, "search_suggest_query"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    iget-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v0, :cond_3

    .line 191
    const-string v0, "display1 LIKE ? OR display2 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    .line 193
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "0 AS suggest_format"

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'android.resource://system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/R$drawable;->ic_menu_recent_history:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "suggest_icon_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "display1 AS suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "display2 AS suggest_text_2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "query AS suggest_intent_query"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    .line 218
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 179
    goto/16 :goto_0

    .line 204
    :cond_3
    const-string v0, "display1 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    .line 206
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "0 AS suggest_format"

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'android.resource://system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/R$drawable;->ic_menu_recent_history:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "suggest_icon_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "display1 AS suggest_text_1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "query AS suggest_intent_query"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
