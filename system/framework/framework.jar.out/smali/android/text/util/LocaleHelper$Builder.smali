.class public final Landroid/text/util/LocaleHelper$Builder;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1}, Landroid/text/util/LocaleHelper$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1}, Landroid/text/util/LocaleHelper$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/text/util/LocaleHelper$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "subTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_1

    .line 85
    # invokes: Landroid/text/util/LocaleHelper;->isAsciiAlphaNum(Ljava/lang/String;)Z
    invoke-static {p0}, Landroid/text/util/LocaleHelper;->access$200(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 89
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    .local v0, "firstChar":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    # invokes: Landroid/text/util/LocaleHelper;->isAsciiAlphaNum(Ljava/lang/String;)Z
    invoke-static {p0}, Landroid/text/util/LocaleHelper;->access$200(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "firstChar":C
    :cond_2
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    :cond_0
    const-string v0, ""

    .line 40
    :cond_1
    :goto_0
    return-object v0

    .line 31
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    # invokes: Landroid/text/util/LocaleHelper;->isValidBcp47Alpha(Ljava/lang/String;II)Z
    invoke-static {v0, v1, v2}, Landroid/text/util/LocaleHelper;->access$000(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    new-instance v1, Landroid/text/util/LocaleHelper$IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/util/LocaleHelper$IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_3
    const-string/jumbo v0, "und"

    goto :goto_0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    const/4 v2, 0x2

    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    :cond_0
    const-string v0, ""

    .line 58
    :cond_1
    :goto_0
    return-object v0

    .line 48
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "uppercaseRegion":Ljava/lang/String;
    # invokes: Landroid/text/util/LocaleHelper;->isValidBcp47Alpha(Ljava/lang/String;II)Z
    invoke-static {v0, v2, v2}, Landroid/text/util/LocaleHelper;->access$000(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    # invokes: Landroid/text/util/LocaleHelper;->isUnM49AreaCode(Ljava/lang/String;)Z
    invoke-static {v0}, Landroid/text/util/LocaleHelper;->access$100(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    new-instance v1, Landroid/text/util/LocaleHelper$IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/util/LocaleHelper$IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    :cond_0
    const-string v3, ""

    .line 77
    :cond_1
    return-object v3

    .line 68
    :cond_2
    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "normalizedVariant":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "subTags":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 72
    .local v4, "subTag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/util/LocaleHelper$Builder;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 73
    new-instance v6, Landroid/text/util/LocaleHelper$IllformedLocaleException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid variant: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/util/LocaleHelper$IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 71
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
