.class public abstract Landroid/service/textservice/SpellCheckerService$Session;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

.field private volatile mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public abstract onCreate()V
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 11
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 166
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_2

    .line 167
    :cond_0
    sget-object v6, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 202
    :cond_1
    :goto_0
    return-object v6

    .line 173
    :cond_2
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v9, :cond_4

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v9, :cond_3

    .line 176
    invoke-virtual {p0}, Landroid/service/textservice/SpellCheckerService$Session;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "localeStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 178
    new-instance v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;-><init>(Ljava/util/Locale;)V

    iput-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    .line 181
    .end local v4    # "localeStr":Ljava/lang/String;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_4
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v9, :cond_5

    .line 184
    sget-object v6, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 186
    :cond_5
    array-length v1, p1

    .line 187
    .local v1, "infosSize":I
    new-array v6, v1, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 188
    .local v6, "retval":[Landroid/view/textservice/SentenceSuggestionsInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 189
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    aget-object v10, p1, v0

    # invokes: Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    invoke-static {v9, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v8

    .line 191
    .local v8, "textInfoParams":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    iget-object v5, v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    .line 193
    .local v5, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 194
    .local v2, "itemsSize":I
    new-array v7, v2, [Landroid/view/textservice/TextInfo;

    .line 195
    .local v7, "splitTextInfos":[Landroid/view/textservice/TextInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 196
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    iget-object v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    aput-object v9, v7, v3

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 198
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {p0, v7, p2, v9}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v9

    aput-object v9, v6, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public abstract onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .prologue
    .line 140
    array-length v1, p1

    .line 141
    .local v1, "length":I
    new-array v2, v1, [Landroid/view/textservice/SuggestionsInfo;

    .line 142
    .local v2, "retval":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 143
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v3

    aput-object v3, v2, v0

    .line 144
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v2
.end method

.method public final setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V
    .locals 0
    .param p1, "session"    # Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .prologue
    .line 107
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .line 108
    return-void
.end method
