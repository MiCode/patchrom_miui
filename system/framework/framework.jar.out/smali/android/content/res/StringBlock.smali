.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:I

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 1
    .param p1, "obj"    # I
    .param p2, "useSparse"    # Z

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 478
    iput p1, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 479
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 483
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 55
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result v0

    iput v0, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 56
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 60
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 47
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result v0

    iput v0, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 48
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 52
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v2, 0xa

    .line 357
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 359
    .local v0, "len":I
    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 360
    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    .line 361
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 367
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 368
    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    .line 369
    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 375
    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 376
    return-void

    .line 360
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 368
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 17
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    .prologue
    .line 167
    move-object/from16 v0, p2

    array-length v13, v0

    if-nez v13, :cond_0

    .line 305
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 170
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v1, "buffer":Landroid/text/SpannableString;
    const/4 v3, 0x0

    .line 172
    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v3, v13, :cond_15

    .line 173
    aget v11, p2, v3

    .line 178
    .local v11, "type":I
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_2

    .line 179
    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x3

    .line 304
    goto :goto_1

    .line 182
    :cond_2
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_3

    .line 183
    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 186
    :cond_3
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_4

    .line 187
    new-instance v13, Landroid/text/style/UnderlineSpan;

    invoke-direct {v13}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 190
    :cond_4
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_5

    .line 191
    new-instance v13, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v14, "monospace"

    invoke-direct {v13, v14}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 194
    :cond_5
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_6

    .line 195
    new-instance v13, Landroid/text/style/RelativeSizeSpan;

    const/high16 v14, 0x3fa00000    # 1.25f

    invoke-direct {v13, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 198
    :cond_6
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_7

    .line 199
    new-instance v13, Landroid/text/style/RelativeSizeSpan;

    const v14, 0x3f4ccccd    # 0.8f

    invoke-direct {v13, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 202
    :cond_7
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_8

    .line 203
    new-instance v13, Landroid/text/style/SubscriptSpan;

    invoke-direct {v13}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 206
    :cond_8
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_9

    .line 207
    new-instance v13, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v13}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 210
    :cond_9
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_a

    .line 211
    new-instance v13, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v13}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 214
    :cond_a
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_b

    .line 215
    new-instance v13, Landroid/text/style/BulletSpan;

    const/16 v14, 0xa

    invoke-direct {v13, v14}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v1, v13, v14, v15}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 217
    :cond_b
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v13

    if-ne v11, v13, :cond_c

    .line 218
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v13, v11}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, "tag":Ljava/lang/String;
    const-string v13, "font;"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 227
    const-string v13, ";height="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "sub":Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 229
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 230
    .local v7, "size":I
    new-instance v13, Landroid/content/res/StringBlock$Height;

    invoke-direct {v13, v7}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v1, v13, v14, v15}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 234
    .end local v7    # "size":I
    :cond_d
    const-string v13, ";size="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_e

    .line 236
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 237
    .restart local v7    # "size":I
    new-instance v13, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v7, v14}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    .end local v7    # "size":I
    :cond_e
    const-string v13, ";fgcolor="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 243
    if-eqz v8, :cond_f

    .line 244
    const/4 v13, 0x1

    invoke-static {v8, v13}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v13

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 249
    :cond_f
    const-string v13, ";color="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    if-eqz v8, :cond_10

    .line 251
    const/4 v13, 0x1

    invoke-static {v8, v13}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v13

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 256
    :cond_10
    const-string v13, ";bgcolor="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    if-eqz v8, :cond_11

    .line 258
    const/4 v13, 0x0

    invoke-static {v8, v13}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v13

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 263
    :cond_11
    const-string v13, ";face="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    if-eqz v8, :cond_1

    .line 265
    new-instance v13, Landroid/text/style/TypefaceSpan;

    invoke-direct {v13, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 269
    .end local v8    # "sub":Ljava/lang/String;
    :cond_12
    const-string v13, "a;"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 272
    const-string v13, ";href="

    invoke-static {v10, v13}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    .restart local v8    # "sub":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 274
    new-instance v13, Landroid/text/style/URLSpan;

    invoke-direct {v13, v8}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 278
    .end local v8    # "sub":Ljava/lang/String;
    :cond_13
    const-string v13, "annotation;"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 279
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 282
    .local v5, "len":I
    const/16 v13, 0x3b

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .local v9, "t":I
    :goto_3
    if-ge v9, v5, :cond_1

    .line 283
    const/16 v13, 0x3d

    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 284
    .local v2, "eq":I
    if-ltz v2, :cond_1

    .line 288
    const/16 v13, 0x3b

    invoke-virtual {v10, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 289
    .local v6, "next":I
    if-gez v6, :cond_14

    .line 290
    move v6, v5

    .line 293
    :cond_14
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v10, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v10, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, "value":Ljava/lang/String;
    new-instance v13, Landroid/text/Annotation;

    invoke-direct {v13, v4, v12}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v3, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v3, 0x2

    aget v15, p2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    move v9, v6

    goto :goto_3

    .line 305
    .end local v2    # "eq":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "next":I
    .end local v9    # "t":I
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_15
    new-instance p1, Landroid/text/SpannedString;

    .end local p1    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 10
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    const/high16 v6, -0x1000000

    .line 325
    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 328
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "name":Ljava/lang/String;
    const-string v0, "color"

    const-string v3, "android"

    invoke-virtual {v9, v8, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 330
    .local v7, "colorRes":I
    if-eqz v7, :cond_1

    .line 331
    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 332
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    .line 333
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 346
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 335
    .restart local v4    # "colors":Landroid/content/res/ColorStateList;
    .restart local v7    # "colorRes":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 343
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 344
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->getHtmlColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 346
    :cond_3
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto :goto_0
.end method

.method private static native nativeCreate([BII)I
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeGetSize(I)I
.end method

.method private static native nativeGetString(II)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(II)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 381
    const/4 v2, 0x0

    .line 390
    :goto_0
    return-object v2

    .line 384
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 385
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 387
    .local v0, "end":I
    if-gez v0, :cond_1

    .line 388
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v0}, Landroid/content/res/StringBlock;->nativeDestroy(I)V

    .line 150
    :cond_0
    return-void

    .line 146
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    .line 147
    iget v1, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v1}, Landroid/content/res/StringBlock;->nativeDestroy(I)V

    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "idx"    # I

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    .line 65
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v1, v7, p1

    .line 66
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 67
    monitor-exit p0

    .line 138
    :goto_0
    return-object v1

    .line 69
    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_0
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v7, :cond_1

    .line 70
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 71
    .restart local v1    # "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 72
    monitor-exit p0

    goto :goto_0

    .line 139
    .end local v1    # "res":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 75
    :cond_1
    :try_start_1
    iget v7, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v7}, Landroid/content/res/StringBlock;->nativeGetSize(I)I

    move-result v0

    .line 76
    .local v0, "num":I
    iget-boolean v7, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v7, :cond_5

    const/16 v7, 0xfa

    if-le v0, v7, :cond_5

    .line 77
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 82
    .end local v0    # "num":I
    :cond_2
    :goto_1
    iget v7, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v7, p1}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "str":Ljava/lang/String;
    move-object v1, v2

    .line 84
    .restart local v1    # "res":Ljava/lang/CharSequence;
    iget v7, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v7, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(II)[I

    move-result-object v3

    .line 87
    .local v3, "style":[I
    if-eqz v3, :cond_12

    .line 88
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v7, :cond_3

    .line 89
    new-instance v7, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v7}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 94
    :cond_3
    const/4 v5, 0x0

    .local v5, "styleIndex":I
    :goto_2
    array-length v7, v3

    if-ge v5, v7, :cond_11

    .line 95
    aget v4, v3, v5

    .line 97
    .local v4, "styleId":I
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v4, v7, :cond_6

    .line 94
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto :goto_2

    .line 79
    .end local v1    # "res":Ljava/lang/CharSequence;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "style":[I
    .end local v4    # "styleId":I
    .end local v5    # "styleIndex":I
    .restart local v0    # "num":I
    :cond_5
    new-array v7, v0, [Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 107
    .end local v0    # "num":I
    .restart local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "style":[I
    .restart local v4    # "styleId":I
    .restart local v5    # "styleIndex":I
    :cond_6
    iget v7, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v7, v4}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "styleTag":Ljava/lang/String;
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 110
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 111
    :cond_7
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 112
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 113
    :cond_8
    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 114
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 115
    :cond_9
    const-string/jumbo v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 116
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 117
    :cond_a
    const-string v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 118
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 119
    :cond_b
    const-string/jumbo v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 120
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 121
    :cond_c
    const-string/jumbo v7, "sup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 122
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 123
    :cond_d
    const-string/jumbo v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 124
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 125
    :cond_e
    const-string/jumbo v7, "strike"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 126
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 127
    :cond_f
    const-string v7, "li"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 128
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 129
    :cond_10
    const-string/jumbo v7, "marquee"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 130
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 134
    .end local v4    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_11
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v2, v3, v7}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .end local v5    # "styleIndex":I
    :cond_12
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v7, p1

    .line 138
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 137
    :cond_13
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
