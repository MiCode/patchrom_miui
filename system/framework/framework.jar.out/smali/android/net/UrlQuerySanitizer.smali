.class public Landroid/net/UrlQuerySanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$ValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$ParameterValuePair;
    }
.end annotation


# static fields
.field private static final sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# instance fields
.field private mAllowUnregisteredParamaters:Z

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferFirstRepeatedParameter:Z

.field private final mSanitizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/UrlQuerySanitizer$ValueSanitizer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 442
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x5ff

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 446
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x5fc

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 450
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 454
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x195

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 458
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 462
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 466
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 470
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x59f

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    .line 97
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 563
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    .line 97
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 587
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public static final getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 489
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAllButWhitespaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAmpAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getAmpLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 540
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getUrlAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 516
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method


# virtual methods
.method protected addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 791
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    new-instance v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/UrlQuerySanitizer$ParameterValuePair;-><init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 911
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 912
    return-void
.end method

.method protected decodeHexDigit(C)I
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 891
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 892
    add-int/lit8 v0, p1, -0x30

    .line 901
    :goto_0
    return v0

    .line 894
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 895
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 897
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 898
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 901
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAllowUnregisteredParamaters()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    return v0
.end method

.method public getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    .line 822
    .local v0, "sanitizer":Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    .line 825
    :cond_0
    return-object v0
.end method

.method public getParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParameterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreferFirstRepeatedParameter()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    return v0
.end method

.method public getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isHexDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "unescapedParameter":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v3

    .line 776
    .local v3, "valueSanitizer":Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v3, :cond_0

    .line 782
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "unescapedValue":Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/net/UrlQuerySanitizer$ValueSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "sanitizedValue":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Landroid/net/UrlQuerySanitizer;->addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseQuery(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->clear()V

    .line 619
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 621
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "attributeValuePair":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 623
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 624
    .local v0, "assignmentIndex":I
    if-gez v0, :cond_1

    .line 626
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v0    # "assignmentIndex":I
    .end local v1    # "attributeValuePair":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public parseUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 598
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 600
    .local v1, "queryIndex":I
    if-ltz v1, :cond_0

    .line 601
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 607
    return-void

    .line 604
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0    # "query":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerParameter(Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "valueSanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .prologue
    .line 690
    if-nez p2, :cond_0

    .line 691
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method

.method public registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/String;
    .param p2, "valueSanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .prologue
    .line 704
    array-length v1, p1

    .line 705
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 706
    iget-object v2, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_0
    return-void
.end method

.method public setAllowUnregisteredParamaters(Z)V
    .locals 0
    .param p1, "allowUnregisteredParamaters"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    .line 721
    return-void
.end method

.method public setPreferFirstRepeatedParameter(Z)V
    .locals 0
    .param p1, "preferFirstRepeatedParameter"    # Z

    .prologue
    .line 748
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    .line 749
    return-void
.end method

.method public setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 0
    .param p1, "sanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .prologue
    .line 432
    iput-object p1, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 433
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2b

    const/16 v9, 0x25

    .line 842
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 843
    .local v3, "firstEscape":I
    if-gez v3, :cond_0

    .line 844
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 845
    if-gez v3, :cond_0

    .line 869
    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 850
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 852
    .local v5, "length":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 853
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 855
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 856
    .local v0, "c":C
    if-ne v0, v10, :cond_2

    .line 857
    const/16 v0, 0x20

    .line 867
    :cond_1
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 859
    :cond_2
    if-ne v0, v9, :cond_1

    add-int/lit8 v7, v4, 0x2

    if-ge v7, v5, :cond_1

    .line 860
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 861
    .local v1, "c1":C
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 862
    .local v2, "c2":C
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 863
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    invoke-virtual {p0, v2}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v8

    add-int/2addr v7, v8

    int-to-char v0, v7

    .line 864
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 869
    .end local v0    # "c":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
