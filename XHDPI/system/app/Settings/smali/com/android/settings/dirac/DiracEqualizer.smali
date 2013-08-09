.class public Lcom/android/settings/dirac/DiracEqualizer;
.super Lmiui/v5/app/MiuiActivity;
.source "DiracEqualizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;,
        Lcom/android/settings/dirac/DiracEqualizer$EQConfig;,
        Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;,
        Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;
    }
.end annotation


# static fields
.field private static final BAND_COUNT:I

.field private static final DIRAC_TO_USER_BAND:[I

.field private static final SEEK_BAR_IDS:[I

.field static final TAG:Ljava/lang/String;

.field private static final USER_BAND_COUNT:I

.field private static final USER_TO_DIRAC_BAND:[I


# instance fields
.field final mBandSeekBars:[Lcom/android/settings/VerticalSeekBar;

.field private mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

.field private mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

.field private final mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

.field private mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

.field private mEqualizerCurve:Lcom/android/settings/EqualizerView;

.field private final mListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPresetSpinner:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;

.field private mValueFactor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 38
    const-class v0, Lcom/android/settings/dirac/DiracEqualizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dirac/DiracEqualizer;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/dirac/DiracEqualizer;->DIRAC_TO_USER_BAND:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/dirac/DiracEqualizer;->USER_TO_DIRAC_BAND:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/dirac/DiracEqualizer;->SEEK_BAR_IDS:[I

    .line 60
    sget-object v0, Lcom/android/settings/dirac/DiracEqualizer;->DIRAC_TO_USER_BAND:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/dirac/DiracEqualizer;->BAND_COUNT:I

    .line 61
    sget-object v0, Lcom/android/settings/dirac/DiracEqualizer;->SEEK_BAR_IDS:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/dirac/DiracEqualizer;->USER_BAND_COUNT:I

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_2
    .array-data 0x4
        0x8dt 0x0t 0x9t 0x7ft
        0x8et 0x0t 0x9t 0x7ft
        0x8ft 0x0t 0x9t 0x7ft
        0x90t 0x0t 0x9t 0x7ft
        0x91t 0x0t 0x9t 0x7ft
        0x92t 0x0t 0x9t 0x7ft
        0x93t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lmiui/v5/app/MiuiActivity;-><init>()V

    .line 63
    sget v0, Lcom/android/settings/dirac/DiracEqualizer;->USER_BAND_COUNT:I

    new-array v0, v0, [Lcom/android/settings/VerticalSeekBar;

    iput-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mBandSeekBars:[Lcom/android/settings/VerticalSeekBar;

    .line 164
    new-instance v0, Lcom/android/settings/dirac/DiracEqualizer$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dirac/DiracEqualizer$1;-><init>(Lcom/android/settings/dirac/DiracEqualizer;)V

    iput-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 260
    new-instance v0, Lcom/android/settings/dirac/DiracEqualizer$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dirac/DiracEqualizer$2;-><init>(Lcom/android/settings/dirac/DiracEqualizer;)V

    iput-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 542
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/dirac/DiracEqualizer;Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/android/settings/dirac/DiracEqualizer;->removeValues(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getCustomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dirac/DiracEqualizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateSeekBars()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dirac/DiracEqualizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateCurve()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dirac/DiracEqualizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateSpinner()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/settings/dirac/DiracEqualizer;->BAND_COUNT:I

    return v0
.end method

.method static synthetic access$600(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/settings/dirac/DiracEqualizer;->loadIds(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/settings/dirac/DiracEqualizer;->isCustomId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getCustomTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/android/settings/dirac/DiracEqualizer;->persistIds(Landroid/content/ContentResolver;Ljava/util/List;)V

    return-void
.end method

.method static decode(Ljava/lang/String;[F)Z
    .locals 7
    .parameter "src"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 524
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v4

    .line 528
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, strs:[Ljava/lang/String;
    array-length v5, v3

    array-length v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 531
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 532
    :try_start_0
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 534
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/settings/dirac/DiracEqualizer;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static encode([F)Ljava/lang/String;
    .locals 6
    .parameter "values"

    .prologue
    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v3, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[F
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 516
    .local v4, v:F
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 517
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v4           #v:F
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getCustomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "title"

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dirac_eq_custom#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 667
    const-string v0, "dirac_eq_custom#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionName()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 249
    const v5, 0x7f0c08b9

    invoke-virtual {p0, v5}, Lcom/android/settings/dirac/DiracEqualizer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, format:Ljava/lang/String;
    const/4 v2, 0x1

    .line 252
    .local v2, i:I
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, suggest:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    invoke-virtual {v5, v4}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->findByTitle(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    .line 254
    .local v0, config:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    if-nez v0, :cond_0

    .line 255
    return-object v4

    :cond_0
    move v2, v3

    .line 257
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method private static isCustomId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 671
    if-eqz p0, :cond_0

    const-string v0, "dirac_eq_custom#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadIds(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 2
    .parameter "cr"

    .prologue
    .line 679
    const-string v1, "dirac_eq_ids"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, ids:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 681
    const/4 v1, 0x0

    .line 684
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static loadValues(Landroid/content/ContentResolver;Ljava/lang/String;[F)Z
    .locals 2
    .parameter "cr"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 481
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, valueStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 483
    invoke-static {v0, p2}, Lcom/android/settings/dirac/DiracEqualizer;->decode(Ljava/lang/String;[F)Z

    move-result v1

    .line 486
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static persistIds(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 5
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dirac/DiracEqualizer$EQConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/dirac/DiracEqualizer$EQConfig;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 690
    .local v0, c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    iget-object v3, v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 694
    .end local v0           #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    :cond_0
    const-string v3, "dirac_eq_ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 695
    return-void
.end method

.method static persistValues(Landroid/content/ContentResolver;Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V
    .locals 2
    .parameter "cr"
    .parameter "config"

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->encode([F)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static removeValues(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 698
    if-eqz p1, :cond_0

    .line 699
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 701
    :cond_0
    return-void
.end method

.method private setBandLevel(IF)V
    .locals 5
    .parameter "band"
    .parameter "level"

    .prologue
    .line 386
    if-ltz p1, :cond_0

    sget v2, Lcom/android/settings/dirac/DiracEqualizer;->BAND_COUNT:I

    if-lt p1, v2, :cond_1

    .line 387
    :cond_0
    sget-object v2, Lcom/android/settings/dirac/DiracEqualizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid band="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {v2}, Lcom/android/settings/EqualizerView;->getMaxLevel()I

    move-result v0

    .line 392
    .local v0, max:I
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {v2}, Lcom/android/settings/EqualizerView;->getMinLevel()I

    move-result v1

    .line 393
    .local v1, min:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 394
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/settings/dirac/DiracUtils;->setLevel(Landroid/content/Context;IF)V

    goto :goto_0
.end method

.method private setUserBandLevel(IF)V
    .locals 3
    .parameter "userBand"
    .parameter "level"

    .prologue
    .line 371
    sget-object v2, Lcom/android/settings/dirac/DiracEqualizer;->USER_TO_DIRAC_BAND:[I

    aget v0, v2, p1

    .line 372
    .local v0, band:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/dirac/DiracEqualizer;->DIRAC_TO_USER_BAND:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 373
    sget-object v2, Lcom/android/settings/dirac/DiracEqualizer;->DIRAC_TO_USER_BAND:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 374
    invoke-direct {p0, v1, p2}, Lcom/android/settings/dirac/DiracEqualizer;->setBandLevel(IF)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v2, v2, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    aput p2, v2, v1

    .line 372
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_1
    return-void
.end method

.method private updateCurve()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->ensureCurrentConfig()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v1, v1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/EqualizerView;->setBands([FI)V

    .line 126
    return-void
.end method

.method private updateSeekBars()V
    .locals 5

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->ensureCurrentConfig()V

    .line 116
    iget-object v3, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v2, v3, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    .line 117
    .local v2, values:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v3, Lcom/android/settings/dirac/DiracEqualizer;->USER_BAND_COUNT:I

    if-ge v1, v3, :cond_0

    .line 118
    sget-object v3, Lcom/android/settings/dirac/DiracEqualizer;->USER_TO_DIRAC_BAND:[I

    aget v0, v3, v1

    .line 119
    .local v0, band:I
    iget-object v3, p0, Lcom/android/settings/dirac/DiracEqualizer;->mBandSeekBars:[Lcom/android/settings/VerticalSeekBar;

    aget-object v3, v3, v1

    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->leveltoProgress(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/VerticalSeekBar;->setProgress(I)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0           #band:I
    :cond_0
    return-void
.end method

.method private updateSpinner()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->ensureCurrentConfig()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mPresetSpinner:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v1, v1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method


# virtual methods
.method applyEQConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 288
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    .line 285
    .local v1, values:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 286
    aget v2, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/dirac/DiracEqualizer;->setBandLevel(IF)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ensureCurrentConfig()V
    .locals 5

    .prologue
    .line 436
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-eqz v4, :cond_0

    .line 461
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 441
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 442
    .local v0, config:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    const-string v4, "dirac_eq_current"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, current:Ljava/lang/String;
    const-string v4, "dirac_eq_auto"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->newAutoEQConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 446
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v4, v4, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v4, v4, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    invoke-static {v3, v4}, Lcom/android/settings/dirac/DiracEqualizer;->decode(Ljava/lang/String;[F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 452
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 453
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    invoke-virtual {v4, v2}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->findById(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    .line 456
    :cond_2
    if-nez v0, :cond_3

    .line 457
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    invoke-virtual {v4}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->getDefaultConfig()Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    .line 460
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracEqualizer;->setCurrentConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    goto :goto_0
.end method

.method leveltoProgress(F)I
    .locals 2
    .parameter "level"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {v0}, Lcom/android/settings/EqualizerView;->getMinLevel()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mValueFactor:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method newAutoEQConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V
    .locals 5
    .parameter "src"

    .prologue
    .line 464
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    .line 465
    .local v0, values:[F
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-nez v1, :cond_1

    .line 466
    new-instance v1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    const-string v2, "dirac_eq_auto"

    const v3, 0x7f0c08b6

    invoke-virtual {p0, v3}, Lcom/android/settings/dirac/DiracEqualizer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;-><init>(Ljava/lang/String;Ljava/lang/String;[FI)V

    iput-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 470
    :goto_1
    return-void

    .line 464
    .end local v0           #values:[F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 468
    .restart local v0       #values:[F
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    invoke-virtual {v1, v0}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->updateValues([F)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/high16 v10, 0x104

    const/4 v8, 0x1

    .line 215
    iget-object v6, p0, Lcom/android/settings/dirac/DiracEqualizer;->mPresetSpinner:Landroid/widget/TextView;

    if-ne p1, v6, :cond_1

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c08bb

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    invoke-virtual {v7}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->getEQTitles()[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    iget-object v9, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    invoke-virtual {v8, v9}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->indexOf(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/dirac/DiracEqualizer;->mListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/dirac/DiracEqualizer;->mListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f090099

    if-ne v6, v7, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->finish()V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f09009a

    if-ne v6, v7, :cond_0

    .line 225
    iget-object v6, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget v6, v6, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 226
    const v6, 0x7f040045

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, custom:Landroid/view/View;
    const v6, 0x7f090098

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 228
    .local v3, inputText:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getSuggestionName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 231
    new-instance v4, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;-><init>(Lcom/android/settings/dirac/DiracEqualizer;Landroid/widget/EditText;)V

    .line 232
    .local v4, listener:Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c08ba

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c08b7

    invoke-virtual {v6, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v10, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 241
    .local v2, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;-><init>(Lcom/android/settings/dirac/DiracEqualizer;Landroid/app/AlertDialog;)V

    .line 242
    .local v5, watcher:Landroid/text/TextWatcher;
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    invoke-virtual {v4, v5}, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->setTextWatcher(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mValueFactor:I

    .line 81
    new-instance v4, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    invoke-direct {v4, p0}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->ensureCurrentConfig()V

    .line 84
    const v4, 0x7f04003c

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->setMiuiContentView(I)Landroid/view/View;

    .line 85
    const v4, 0x7f02004b

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->setBackground(I)V

    .line 86
    const v4, 0x7f09008c

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/EqualizerView;

    iput-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    .line 87
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/EqualizerView;->init(II)V

    .line 90
    const v4, 0x7f040046

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->setTitleView(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, titleView:Landroid/view/View;
    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v4, 0x7f09009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mSaveButton:Landroid/widget/Button;

    .line 93
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->refreshSaveButton()V

    .line 96
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {v4}, Lcom/android/settings/EqualizerView;->getMaxLevel()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {v5}, Lcom/android/settings/EqualizerView;->getMinLevel()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/dirac/DiracEqualizer;->mValueFactor:I

    mul-int v1, v4, v5

    .line 97
    .local v1, maxProgress:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/android/settings/dirac/DiracEqualizer;->USER_BAND_COUNT:I

    if-ge v0, v4, :cond_0

    .line 98
    sget-object v4, Lcom/android/settings/dirac/DiracEqualizer;->SEEK_BAR_IDS:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/VerticalSeekBar;

    .line 99
    .local v2, seekBar:Lcom/android/settings/VerticalSeekBar;
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mBandSeekBars:[Lcom/android/settings/VerticalSeekBar;

    aput-object v2, v4, v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/VerticalSeekBar;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v2, p0}, Lcom/android/settings/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 102
    invoke-virtual {v2, v1}, Lcom/android/settings/VerticalSeekBar;->setMax(I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v2           #seekBar:Lcom/android/settings/VerticalSeekBar;
    :cond_0
    const v4, 0x7f09008b

    invoke-virtual {p0, v4}, Lcom/android/settings/dirac/DiracEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mPresetSpinner:Landroid/widget/TextView;

    .line 105
    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mPresetSpinner:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateSeekBars()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateSpinner()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateCurve()V

    .line 111
    invoke-static {}, Lcom/android/settings/dirac/DiracUtils;->getInstance()Lcom/android/settings/dirac/DiracUtils;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lmiui/v5/app/MiuiActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 148
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->finish()V

    goto :goto_0

    .line 151
    :sswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x60c012f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    iget-object v3, p0, Lcom/android/settings/dirac/DiracEqualizer;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/android/settings/dirac/DiracEqualizer;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 136
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget v2, v2, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mType:I

    if-nez v2, :cond_0

    .line 137
    const v2, 0x7f0c08b4

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 141
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/android/settings/VerticalSeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/android/settings/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, userBand:I
    invoke-virtual {p0, p2}, Lcom/android/settings/dirac/DiracEqualizer;->progressToLevel(I)F

    move-result v0

    .line 189
    .local v0, level:F
    invoke-direct {p0, v1, v0}, Lcom/android/settings/dirac/DiracEqualizer;->setUserBandLevel(IF)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateCurve()V

    .line 191
    return-void
.end method

.method public onStartTrackingTouch(Lcom/android/settings/VerticalSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracEqualizer;->newAutoEQConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracEqualizer;->setCurrentConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateSpinner()V

    .line 201
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/settings/VerticalSeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/android/settings/VerticalSeekBar;->getProgress()I

    move-result v1

    .line 206
    .local v1, progress:I
    invoke-virtual {p1}, Lcom/android/settings/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 207
    .local v2, userBand:I
    invoke-virtual {p0, v1}, Lcom/android/settings/dirac/DiracEqualizer;->progressToLevel(I)F

    move-result v0

    .line 208
    .local v0, level:F
    invoke-direct {p0, v2, v0}, Lcom/android/settings/dirac/DiracEqualizer;->setUserBandLevel(IF)V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer;->updateCurve()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    invoke-static {v3, v4}, Lcom/android/settings/dirac/DiracEqualizer;->persistValues(Landroid/content/ContentResolver;Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 211
    return-void
.end method

.method progressToLevel(I)F
    .locals 2
    .parameter "progress"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEqualizerCurve:Lcom/android/settings/EqualizerView;

    invoke-virtual {v0}, Lcom/android/settings/EqualizerView;->getMinLevel()I

    move-result v0

    iget v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mValueFactor:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mValueFactor:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method refreshSaveButton()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget v0, v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    :cond_0
    return-void

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCurrentConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 417
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-eq v0, p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v1, v1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/dirac/DiracEqualizer;->removeValues(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer;->mEQConfigAuto:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 423
    :cond_0
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->refreshSaveButton()V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracEqualizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dirac_eq_current"

    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    iget-object v2, v2, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 427
    :cond_1
    return-void
.end method
