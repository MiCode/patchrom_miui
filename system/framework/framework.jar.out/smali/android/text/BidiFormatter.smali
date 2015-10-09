.class public final Landroid/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BidiFormatter$1;,
        Landroid/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 87
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    .line 117
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 122
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/text/BidiFormatter;

    const/4 v1, 0x0

    sget-object v2, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    .line 224
    new-instance v0, Landroid/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/text/TextDirectionHeuristic;)V
    .locals 0
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-boolean p1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    .line 266
    iput p2, p0, Landroid/text/BidiFormatter;->mFlags:I

    .line 267
    iput-object p3, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    .line 268
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "x3"    # Landroid/text/BidiFormatter$1;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 82
    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method static synthetic access$200()Landroid/text/BidiFormatter;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$300()Landroid/text/BidiFormatter;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    return-object v0
.end method

.method private static getEntryDir(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v0

    return v0
.end method

.method private static getExitDir(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 472
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/text/BidiFormatter;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Landroid/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$Builder;->build()Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 256
    new-instance v0, Landroid/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$Builder;->build()Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "rtlContext"    # Z

    .prologue
    .line 247
    new-instance v0, Landroid/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$Builder;->build()Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x1

    .line 447
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public isRtlContext()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    return v0
.end method

.method public markAfter(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 303
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 305
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 306
    :cond_0
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 311
    :goto_0
    return-object v1

    .line 308
    :cond_1
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 309
    :cond_2
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method public markBefore(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 332
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 334
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 335
    :cond_0
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 340
    :goto_0
    return-object v1

    .line 337
    :cond_1
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 338
    :cond_2
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    .prologue
    .line 383
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p2, p1, v2, v3}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 384
    .local v0, "isRtl":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/text/BidiFormatter;->getStereoReset()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 386
    if-eqz v0, :cond_2

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markBefore(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_0
    iget-boolean v2, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v0, v2, :cond_4

    .line 390
    if-eqz v0, :cond_3

    const/16 v2, 0x202b

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :goto_2
    if-eqz p3, :cond_1

    .line 397
    if-eqz v0, :cond_5

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_3
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markAfter(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 386
    :cond_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 390
    :cond_3
    const/16 v2, 0x202a

    goto :goto_1

    .line 394
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 397
    :cond_5
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_3
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    .prologue
    .line 426
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
