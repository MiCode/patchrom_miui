.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final MIN_SENTENCE_LENGTH:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field private static final SUGGESTION_SPAN_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final USE_SPAN_RANGE:I = -0x1

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mIsSentenceSpellCheckSupported:Z

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private final mSuggestionSpanCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v1, v2, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 88
    iput v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 101
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 105
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 108
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v0

    .line 109
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 110
    new-array v1, v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 112
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 115
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/SpellChecker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SpellChecker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/SpellChecker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SpellChecker;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SpellChecker;
    .param p1, "x1"    # Landroid/text/Editable;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 204
    .local v0, "index":I
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v2, v0

    .line 205
    .local v1, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 207
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v3, v2, v0

    .line 208
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 13
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p3, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    .line 459
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 460
    .local v5, "spellCheckSpanStart":I
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 461
    .local v4, "spellCheckSpanEnd":I
    if-ltz v5, :cond_0

    if-gt v4, v5, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_2

    const/4 v11, -0x1

    move/from16 v0, p5

    if-eq v0, v11, :cond_2

    .line 467
    add-int v6, v5, p4

    .line 468
    .local v6, "start":I
    add-int v1, v6, p5

    .line 474
    .local v1, "end":I
    :goto_1
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v9

    .line 476
    .local v9, "suggestionsCount":I
    if-lez v9, :cond_3

    .line 477
    new-array v8, v9, [Ljava/lang/String;

    .line 478
    .local v8, "suggestions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v9, :cond_4

    .line 479
    invoke-virtual {p2, v2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v2

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 470
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v6    # "start":I
    .end local v8    # "suggestions":[Ljava/lang/String;
    .end local v9    # "suggestionsCount":I
    :cond_2
    move v6, v5

    .line 471
    .restart local v6    # "start":I
    move v1, v4

    .restart local v1    # "end":I
    goto :goto_1

    .line 482
    .restart local v9    # "suggestionsCount":I
    :cond_3
    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 485
    .restart local v8    # "suggestions":[Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/text/style/SuggestionSpan;

    iget-object v11, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v7, v11, v8, v12}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 489
    .local v7, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    iget-boolean v11, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v11, :cond_6

    .line 490
    invoke-static {v6, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 491
    .local v3, "key":Ljava/lang/Long;
    iget-object v11, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v11, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/style/SuggestionSpan;

    .line 492
    .local v10, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v10, :cond_5

    .line 497
    invoke-interface {p1, v10}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 499
    :cond_5
    iget-object v11, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v11, v3, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .end local v3    # "key":Ljava/lang/Long;
    .end local v10    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    const/16 v11, 0x21

    invoke-interface {p1, v7, v6, v1, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 503
    iget-object v11, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v1, v12}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    goto :goto_0
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .prologue
    .line 764
    if-eq p4, p1, :cond_0

    if-eq p3, p2, :cond_0

    .line 765
    const/4 v1, 0x1

    .line 793
    .local v1, "haveWordBoundariesChanged":Z
    :goto_0
    return v1

    .line 769
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_0
    if-ne p4, p1, :cond_1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 770
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 771
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    .line 778
    .restart local v1    # "haveWordBoundariesChanged":Z
    goto :goto_0

    .end local v0    # "codePoint":I
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_1
    if-ne p3, p2, :cond_2

    if-lez p2, :cond_2

    .line 779
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 780
    .restart local v0    # "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    .line 787
    .restart local v1    # "haveWordBoundariesChanged":Z
    goto :goto_0

    .line 791
    .end local v0    # "codePoint":I
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "haveWordBoundariesChanged":Z
    goto :goto_0
.end method

.method private isSessionActive()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextSpellCheckSpanIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v4, :cond_1

    .line 184
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v4, v4, v0

    if-gez v4, :cond_0

    .line 199
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 183
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    array-length v5, v5

    if-ne v4, v5, :cond_2

    .line 188
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    mul-int/lit8 v2, v4, 0x2

    .line 189
    .local v2, "newSize":I
    new-array v1, v2, [I

    .line 190
    .local v1, "newIds":[I
    new-array v3, v2, [Landroid/text/style/SpellCheckSpan;

    .line 191
    .local v3, "newSpellCheckSpans":[Landroid/text/style/SpellCheckSpan;
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 194
    iput-object v3, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 197
    .end local v1    # "newIds":[I
    .end local v2    # "newSize":I
    .end local v3    # "newSpellCheckSpans":[Landroid/text/style/SpellCheckSpan;
    :cond_2
    iget-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v6, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v6}, Landroid/text/style/SpellCheckSpan;-><init>()V

    aput-object v6, v4, v5

    .line 198
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 199
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v4, -0x1

    goto :goto_1
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 18
    .param p1, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 329
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v1, v3, :cond_2

    .line 330
    :cond_0
    const/4 v4, 0x0

    .line 382
    :cond_1
    :goto_0
    return-object v4

    .line 332
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    .line 333
    .local v2, "editable":Landroid/text/Editable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v13

    .line 334
    .local v13, "sequenceNumber":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v10, v1, :cond_8

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v1, v1, v10

    if-ne v13, v1, :cond_7

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v7

    .line 337
    .local v7, "attributes":I
    and-int/lit8 v1, v7, 0x1

    if-lez v1, :cond_3

    const/4 v9, 0x1

    .line 339
    .local v9, "isInDictionary":Z
    :goto_2
    and-int/lit8 v1, v7, 0x2

    if-lez v1, :cond_4

    const/4 v12, 0x1

    .line 342
    .local v12, "looksLikeTypo":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v4, v1, v10

    .line 345
    .local v4, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-nez v9, :cond_5

    if-eqz v12, :cond_5

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 346
    invoke-direct/range {v1 .. v6}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    goto :goto_0

    .line 337
    .end local v4    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v9    # "isInDictionary":Z
    .end local v12    # "looksLikeTypo":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 339
    .restart local v9    # "isInDictionary":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 350
    .restart local v4    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v12    # "looksLikeTypo":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v1, :cond_1

    .line 353
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 354
    .local v15, "spellCheckSpanStart":I
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 357
    .local v14, "spellCheckSpanEnd":I
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_6

    const/4 v1, -0x1

    move/from16 v0, p3

    if-eq v0, v1, :cond_6

    .line 358
    add-int v16, v15, p2

    .line 359
    .local v16, "start":I
    add-int v8, v16, p3

    .line 364
    .local v8, "end":I
    :goto_4
    if-ltz v15, :cond_1

    if-le v14, v15, :cond_1

    move/from16 v0, v16

    if-le v8, v0, :cond_1

    .line 366
    move/from16 v0, v16

    invoke-static {v0, v8}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 367
    .local v11, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v1, v11}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/text/style/SuggestionSpan;

    .line 368
    .local v17, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v17, :cond_1

    .line 373
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v1, v11}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 361
    .end local v8    # "end":I
    .end local v11    # "key":Ljava/lang/Long;
    .end local v16    # "start":I
    .end local v17    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    move/from16 v16, v15

    .line 362
    .restart local v16    # "start":I
    move v8, v14

    .restart local v8    # "end":I
    goto :goto_4

    .line 334
    .end local v4    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v7    # "attributes":I
    .end local v8    # "end":I
    .end local v9    # "isInDictionary":Z
    .end local v12    # "looksLikeTypo":Z
    .end local v14    # "spellCheckSpanEnd":I
    .end local v15    # "spellCheckSpanStart":I
    .end local v16    # "start":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 382
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private resetSession()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 120
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 122
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    if-nez v1, :cond_1

    .line 125
    :cond_0
    iput-object v5, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 135
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_2

    .line 136
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v5, v2, p0, v3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 131
    iput-boolean v4, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    goto :goto_0

    .line 138
    .restart local v0    # "i":I
    :cond_2
    iput v3, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 141
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 142
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 143
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 454
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 146
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 148
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 150
    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 157
    return-void
.end method

.method private spellCheck()V
    .locals 17

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v14, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 272
    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 273
    .local v6, "selectionStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 275
    .local v5, "selectionEnd":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SpellChecker;->mLength:I

    new-array v9, v14, [Landroid/view/textservice/TextInfo;

    .line 276
    .local v9, "textInfos":[Landroid/view/textservice/TextInfo;
    const/4 v11, 0x0

    .line 278
    .local v11, "textInfosCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v3, v14, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v7, v14, v3

    .line 280
    .local v7, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v14, v14, v3

    if-ltz v14, :cond_2

    invoke-virtual {v7}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 278
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_3
    invoke-interface {v1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 283
    .local v8, "start":I
    invoke-interface {v1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 287
    .local v2, "end":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v14, :cond_6

    .line 291
    if-le v5, v8, :cond_4

    if-le v6, v2, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 295
    .local v4, "isEditing":Z
    :goto_3
    if-ltz v8, :cond_2

    if-le v2, v8, :cond_2

    if-eqz v4, :cond_2

    .line 296
    instance-of v14, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v14, :cond_9

    move-object v14, v1

    check-cast v14, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v8, v2}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, "word":Ljava/lang/String;
    :goto_4
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 300
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "textInfosCount":I
    .local v12, "textInfosCount":I
    new-instance v14, Landroid/view/textservice/TextInfo;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SpellChecker;->mCookie:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker;->mIds:[I

    move-object/from16 v16, v0

    aget v16, v16, v3

    move/from16 v0, v16

    invoke-direct {v14, v13, v15, v0}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v11

    move v11, v12

    .end local v12    # "textInfosCount":I
    .restart local v11    # "textInfosCount":I
    goto :goto_2

    .line 291
    .end local v4    # "isEditing":Z
    .end local v13    # "word":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 293
    :cond_6
    if-lt v5, v8, :cond_7

    if-le v6, v2, :cond_8

    :cond_7
    const/4 v4, 0x1

    .restart local v4    # "isEditing":Z
    :goto_5
    goto :goto_3

    .end local v4    # "isEditing":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 296
    .restart local v4    # "isEditing":Z
    :cond_9
    invoke-interface {v1, v8, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 310
    .end local v2    # "end":I
    .end local v4    # "isEditing":Z
    .end local v7    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v8    # "start":I
    :cond_a
    if-lez v11, :cond_0

    .line 311
    array-length v14, v9

    if-ge v11, v14, :cond_b

    .line 312
    new-array v10, v11, [Landroid/view/textservice/TextInfo;

    .line 313
    .local v10, "textInfosCopy":[Landroid/view/textservice/TextInfo;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v9, v14, v10, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    move-object v9, v10

    .line 317
    .end local v10    # "textInfosCopy":[Landroid/view/textservice/TextInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v14, :cond_c

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v15, 0x5

    invoke-virtual {v14, v9, v15}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    goto/16 :goto_0

    .line 321
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v9, v15, v0}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closeSession()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 172
    :cond_0
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v1, v2

    .line 173
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    :cond_2
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 10
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 401
    iget-object v9, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 403
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_5

    .line 404
    aget-object v7, p1, v1

    .line 405
    .local v7, "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    if-nez v7, :cond_1

    .line 403
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_1
    const/4 v6, 0x0

    .line 409
    .local v6, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v7}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 410
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v8

    .line 411
    .local v8, "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    if-nez v8, :cond_3

    .line 409
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 414
    :cond_3
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v4

    .line 415
    .local v4, "offset":I
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v3

    .line 416
    .local v3, "length":I
    invoke-direct {p0, v8, v4, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v5

    .line 418
    .local v5, "scs":Landroid/text/style/SpellCheckSpan;
    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 421
    move-object v6, v5

    goto :goto_3

    .line 424
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "scs":Landroid/text/style/SpellCheckSpan;
    .end local v8    # "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    if-eqz v6, :cond_0

    .line 426
    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 429
    .end local v2    # "j":I
    .end local v6    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v7    # "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 430
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 5
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    const/4 v4, -0x1

    .line 387
    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 388
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 389
    aget-object v3, p1, v1

    invoke-direct {p0, v3, v4, v4}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    .line 391
    .local v2, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-eqz v2, :cond_0

    .line 393
    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v2    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 397
    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 222
    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 3
    .param p1, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 214
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 218
    :cond_0
    return-void

    .line 212
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public spellCheck(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, 0x0

    .line 228
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v3

    .line 229
    .local v3, "locale":Ljava/util/Locale;
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    .line 230
    .local v1, "isSessionActive":Z
    if-eqz v3, :cond_0

    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v7, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 231
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 233
    const/4 p1, 0x0

    .line 234
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 243
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 266
    :goto_1
    return-void

    .line 236
    :cond_2
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v5

    .line 237
    .local v5, "spellCheckerActivated":Z
    if-eq v1, v5, :cond_1

    .line 239
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_0

    .line 246
    .end local v5    # "spellCheckerActivated":Z
    :cond_3
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v2, v7

    .line 247
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_5

    .line 248
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v6, v7, v0

    .line 249
    .local v6, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v6}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 250
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    goto :goto_1

    .line 247
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    .end local v6    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_5
    add-int/lit8 v7, v2, 0x1

    new-array v4, v7, [Landroid/widget/SpellChecker$SpellParser;

    .line 260
    .local v4, "newSpellParsers":[Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v7, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 263
    new-instance v6, Landroid/widget/SpellChecker$SpellParser;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V

    .line 264
    .restart local v6    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v6, v7, v2

    .line 265
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    goto :goto_1
.end method
