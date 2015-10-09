.class public Landroid/text/util/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/LocaleHelper$IllformedLocaleException;,
        Landroid/text/util/LocaleHelper$Builder;
    }
.end annotation


# static fields
.field private static final UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field private static final sLanguageTagCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/text/util/LocaleHelper$1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/util/LocaleHelper$1;-><init>(I)V

    sput-object v0, Landroid/text/util/LocaleHelper;->sLanguageTagCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Landroid/text/util/LocaleHelper;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Landroid/text/util/LocaleHelper;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Landroid/text/util/LocaleHelper;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 11
    invoke-static {p0}, Landroid/text/util/LocaleHelper;->makeLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "adjusted":Ljava/lang/String;
    const-string v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    const-string v0, "iw"

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    const-string v0, "in"

    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const-string v0, "ji"

    goto :goto_0
.end method

.method private static concatenateRange([Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 255
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 256
    if-eq v1, p1, :cond_0

    .line 257
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 111
    sget-object v0, Landroid/text/util/LocaleHelper;->sLanguageTagCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 288
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 289
    .local v0, "character":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    .line 292
    :cond_2
    const/4 v2, 0x0

    .line 296
    .end local v0    # "character":C
    :goto_1
    return v2

    .line 287
    .restart local v0    # "character":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "character":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v2

    .line 333
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    .local v0, "character":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    .end local v0    # "character":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 301
    .local v2, "length":I
    if-lt v2, p1, :cond_0

    if-le v2, p2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v3

    .line 305
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 307
    .local v0, "character":C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_0

    .line 305
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    .end local v0    # "character":C
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isValidBcp47Alphanum(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "attributeOrType"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/text/util/LocaleHelper;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static makeLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 13
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v12, 0x2d

    const/4 v11, 0x0

    .line 126
    const-string v2, ""

    .line 127
    .local v2, "language":Ljava/lang/String;
    const-string v4, ""

    .line 128
    .local v4, "region":Ljava/lang/String;
    const-string v7, ""

    .line 130
    .local v7, "variant":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/util/LocaleHelper;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "languageCode":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "variantCode":Ljava/lang/String;
    # invokes: Landroid/text/util/LocaleHelper$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v3, v11}, Landroid/text/util/LocaleHelper$Builder;->access$400(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 135
    # invokes: Landroid/text/util/LocaleHelper$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v0, v11}, Landroid/text/util/LocaleHelper$Builder;->access$500(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 138
    :try_start_0
    # invokes: Landroid/text/util/LocaleHelper$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Landroid/text/util/LocaleHelper$Builder;->access$600(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/text/util/LocaleHelper$IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 149
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 150
    const-string/jumbo v2, "und"

    .line 153
    :cond_0
    const-string/jumbo v9, "no"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "NO"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "NY"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 154
    const-string/jumbo v2, "nn"

    .line 155
    const-string v4, "NO"

    .line 156
    const-string v7, ""

    .line 159
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x10

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 163
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 168
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 139
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ilfe":Landroid/text/util/LocaleHelper$IllformedLocaleException;
    invoke-static {v8}, Landroid/text/util/LocaleHelper;->splitIllformedVariant(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v11

    goto :goto_0
.end method

.method private static splitIllformedVariant(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 191
    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "normalizedVariant":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "subTags":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v5, v10

    const-string v8, ""

    aput-object v8, v5, v11

    .line 209
    .local v5, "split":[Ljava/lang/String;
    array-length v2, v7

    .line 210
    .local v2, "firstInvalidSubtag":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 211
    aget-object v8, v7, v3

    invoke-static {v8, v11, v12}, Landroid/text/util/LocaleHelper;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 212
    move v2, v3

    .line 217
    :cond_0
    if-nez v2, :cond_2

    .line 246
    :goto_1
    return-object v5

    .line 210
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_2
    move v1, v2

    .line 224
    .local v1, "firstIllformedSubtag":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 225
    aget-object v6, v7, v3

    .line 229
    .local v6, "subTag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v12, :cond_4

    .line 230
    invoke-static {v6}, Landroid/text/util/LocaleHelper;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 231
    move v1, v3

    .line 224
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 234
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 235
    .local v0, "firstChar":C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_5

    const/16 v8, 0x39

    if-gt v0, v8, :cond_5

    invoke-static {v6}, Landroid/text/util/LocaleHelper;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 236
    :cond_5
    move v1, v3

    goto :goto_3

    .line 239
    .end local v0    # "firstChar":C
    :cond_6
    move v1, v3

    goto :goto_3

    .line 243
    .end local v6    # "subTag":Ljava/lang/String;
    :cond_7
    invoke-static {v7, v10, v1}, Landroid/text/util/LocaleHelper;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    .line 244
    invoke-static {v7, v1, v2}, Landroid/text/util/LocaleHelper;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v11

    goto :goto_1
.end method
