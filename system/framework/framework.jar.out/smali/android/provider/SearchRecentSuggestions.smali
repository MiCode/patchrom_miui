.class public Landroid/provider/SearchRecentSuggestions;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchRecentSuggestions$SuggestionColumns;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchSuggestions"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_DATE_INDEX:I = 0x1

.field public static final QUERIES_PROJECTION_DISPLAY1_INDEX:I = 0x3

.field public static final QUERIES_PROJECTION_DISPLAY2_INDEX:I = 0x4

.field public static final QUERIES_PROJECTION_QUERY_INDEX:I = 0x2

.field private static final sWritesInProgress:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mSuggestionsUri:Landroid/net/Uri;

.field private final mTwoLineDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string/jumbo v1, "query"

    aput-object v1, v0, v4

    const-string v1, "display1"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string/jumbo v1, "query"

    aput-object v1, v0, v4

    const-string v1, "display1"

    aput-object v1, v0, v5

    const-string v1, "display2"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 137
    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    .line 140
    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/suggestions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    .line 145
    return-void

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/provider/SearchRecentSuggestions;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 194
    .local v2, "now":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "display1"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-boolean v5, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-eqz v5, :cond_0

    .line 197
    const-string v5, "display2"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    const-string/jumbo v5, "query"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v5, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    const/16 v5, 0xfa

    invoke-virtual {p0, v0, v5}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    .line 208
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "SearchSuggestions"

    const-string/jumbo v6, "saveRecentQuery"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    .line 221
    return-void
.end method

.method public saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Landroid/provider/SearchRecentSuggestions$1;

    const-string/jumbo v1, "saveRecentQuery"

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/provider/SearchRecentSuggestions$1;-><init>(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions$1;->start()V

    goto :goto_0
.end method

.method protected truncateHistory(Landroid/content/ContentResolver;I)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "maxEntries"    # I

    .prologue
    .line 230
    if-gez p2, :cond_0

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 237
    .local v1, "selection":Ljava/lang/String;
    if-lez p2, :cond_1

    .line 238
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN (SELECT _id FROM suggestions ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    :cond_1
    iget-object v2, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "SearchSuggestions"

    const-string/jumbo v3, "truncateHistory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method waitForSave()V
    .locals 1

    .prologue
    .line 184
    :cond_0
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 185
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-gtz v0, :cond_0

    .line 186
    return-void
.end method
