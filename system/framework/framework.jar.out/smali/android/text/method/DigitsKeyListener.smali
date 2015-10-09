.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 52
    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xd

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    .line 230
    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    .line 52
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 81
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 82
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 84
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 85
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 86
    return-void

    .end local v0    # "kind":I
    :cond_1
    move v2, v1

    .line 84
    goto :goto_0
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4
    .param p0, "accepted"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 120
    .local v0, "dim":Landroid/text/method/DigitsKeyListener;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 101
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 103
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 104
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 107
    :goto_1
    return-object v1

    .end local v0    # "kind":I
    :cond_1
    move v2, v1

    .line 101
    goto :goto_0

    .line 106
    .restart local v0    # "kind":I
    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 107
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_1
.end method

.method private static isDecimalPointChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 65
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSignChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 60
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 140
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 142
    .local v4, "out":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_1

    .line 226
    .end local v4    # "out":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v4

    .line 146
    .restart local v4    # "out":Ljava/lang/CharSequence;
    :cond_1
    if-eqz v4, :cond_2

    .line 147
    move-object p1, v4

    .line 148
    const/4 p2, 0x0

    .line 149
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 152
    :cond_2
    const/4 v5, -0x1

    .line 153
    .local v5, "sign":I
    const/4 v1, -0x1

    .line 154
    .local v1, "decimal":I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 160
    .local v2, "dlen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p5, :cond_5

    .line 161
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 163
    .local v0, "c":C
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    move v5, v3

    .line 160
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    :cond_4
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 166
    move v1, v3

    goto :goto_2

    .line 169
    .end local v0    # "c":C
    :cond_5
    move/from16 v3, p6

    :goto_3
    if-ge v3, v2, :cond_8

    .line 170
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 172
    .restart local v0    # "c":C
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 173
    const-string v4, ""

    goto :goto_0

    .line 174
    :cond_6
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 175
    move v1, v3

    .line 169
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 186
    .end local v0    # "c":C
    :cond_8
    const/4 v7, 0x0

    .line 188
    .local v7, "stripped":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v3, p3, -0x1

    :goto_4
    if-lt v3, p2, :cond_12

    .line 189
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 190
    .restart local v0    # "c":C
    const/4 v6, 0x0

    .line 192
    .local v6, "strip":Z
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 193
    if-ne v3, p2, :cond_9

    if-eqz p5, :cond_b

    .line 194
    :cond_9
    const/4 v6, 0x1

    .line 208
    :cond_a
    :goto_5
    if-eqz v6, :cond_11

    .line 209
    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_f

    .line 210
    const-string v4, ""

    goto :goto_0

    .line 195
    :cond_b
    if-ltz v5, :cond_c

    .line 196
    const/4 v6, 0x1

    goto :goto_5

    .line 198
    :cond_c
    move v5, v3

    goto :goto_5

    .line 200
    :cond_d
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 201
    if-ltz v1, :cond_e

    .line 202
    const/4 v6, 0x1

    goto :goto_5

    .line 204
    :cond_e
    move v1, v3

    goto :goto_5

    .line 213
    :cond_f
    if-nez v7, :cond_10

    .line 214
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 217
    .restart local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    :cond_10
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 188
    :cond_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 221
    .end local v0    # "c":C
    .end local v6    # "strip":Z
    :cond_12
    if-eqz v7, :cond_13

    move-object v4, v7

    .line 222
    goto/16 :goto_0

    .line 223
    :cond_13
    if-nez v4, :cond_0

    .line 226
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x2

    .line 128
    .local v0, "contentType":I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    .line 129
    or-int/lit16 v0, v0, 0x1000

    .line 131
    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    .line 132
    or-int/lit16 v0, v0, 0x2000

    .line 134
    :cond_1
    return v0
.end method
