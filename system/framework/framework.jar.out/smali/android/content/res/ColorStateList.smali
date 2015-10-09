.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[[I

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mColors:[I

.field private mDefaultColor:I

.field private mStateSpecs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 312
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/high16 v0, -0x10000

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 72
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 2
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/high16 v1, -0x10000

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 79
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 80
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 82
    array-length v1, p1

    if-lez v1, :cond_1

    .line 83
    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 86
    aget-object v1, p1, v0

    array-length v1, v1

    if-nez v1, :cond_0

    .line 87
    aget v1, p2, v0

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 118
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 122
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 125
    :cond_1
    if-eq v1, v3, :cond_2

    .line 126
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_2
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 150
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 151
    return-object v0

    .line 146
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 25
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    add-int/lit8 v10, v22, 0x1

    .line 181
    .local v10, "innerDepth":I
    const/16 v13, 0x14

    .line 182
    .local v13, "listAllocated":I
    const/4 v14, 0x0

    .line 183
    .local v14, "listSize":I
    new-array v5, v13, [I

    .line 184
    .local v5, "colorList":[I
    new-array v0, v13, [[I

    move-object/from16 v20, v0

    .line 187
    .local v20, "stateSpecList":[[I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .local v7, "depth":I
    if-ge v7, v10, :cond_1

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 189
    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 193
    if-gt v7, v10, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "item"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, "colorRes":I
    const/high16 v4, -0x10000

    .line 199
    .local v4, "color":I
    const/4 v8, 0x0

    .line 202
    .local v8, "haveColor":Z
    const/4 v11, 0x0

    .line 203
    .local v11, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v17

    .line 204
    .local v17, "numAttrs":I
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 205
    .local v19, "stateSpec":[I
    const/4 v9, 0x0

    .local v9, "i":I
    move v12, v11

    .end local v11    # "j":I
    .local v12, "j":I
    :goto_1
    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 206
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v18

    .line 207
    .local v18, "stateResId":I
    if-nez v18, :cond_7

    .line 221
    .end local v18    # "stateResId":I
    :cond_2
    move-object/from16 v0, v19

    invoke-static {v0, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v19

    .line 223
    if-eqz v6, :cond_a

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 231
    :cond_3
    if-eqz v14, :cond_4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 232
    :cond_4
    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 235
    :cond_5
    add-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    if-lt v0, v13, :cond_6

    .line 236
    add-int/lit8 v22, v14, 0x1

    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v13

    .line 238
    new-array v15, v13, [I

    .line 239
    .local v15, "ncolor":[I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v15, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    new-array v0, v13, [[I

    move-object/from16 v16, v0

    .line 242
    .local v16, "nstate":[[I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    move-object v5, v15

    .line 245
    move-object/from16 v20, v16

    .line 248
    .end local v15    # "ncolor":[I
    .end local v16    # "nstate":[[I
    :cond_6
    aput v4, v5, v14

    .line 249
    aput-object v19, v20, v14

    .line 250
    add-int/lit8 v14, v14, 0x1

    .line 251
    goto/16 :goto_0

    .line 208
    .restart local v18    # "stateResId":I
    :cond_7
    sget v22, Lcom/android/internal/R$attr;->color:I

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 209
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v6

    .line 211
    if-nez v6, :cond_c

    .line 212
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    .line 213
    const/4 v8, 0x1

    move v11, v12

    .line 205
    .end local v12    # "j":I
    .end local v18    # "stateResId":I
    .restart local v11    # "j":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    .end local v11    # "j":I
    .restart local v12    # "j":I
    goto :goto_1

    .line 216
    .restart local v18    # "stateResId":I
    :cond_8
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v9, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v22

    if-eqz v22, :cond_9

    .end local v18    # "stateResId":I
    :goto_3
    aput v18, v19, v12

    goto :goto_2

    .restart local v18    # "stateResId":I
    :cond_9
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto :goto_3

    .line 225
    .end local v11    # "j":I
    .end local v18    # "stateResId":I
    .restart local v12    # "j":I
    :cond_a
    if-nez v8, :cond_3

    .line 226
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": <item> tag requires a \'android:color\' attribute."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 253
    .end local v4    # "color":I
    .end local v6    # "colorRes":I
    .end local v7    # "depth":I
    .end local v8    # "haveColor":Z
    .end local v9    # "i":I
    .end local v12    # "j":I
    .end local v17    # "numAttrs":I
    .end local v19    # "stateSpec":[I
    :cond_b
    new-array v0, v14, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    .line 254
    new-array v0, v14, [[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 255
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    return-void

    .restart local v4    # "color":I
    .restart local v6    # "colorRes":I
    .restart local v7    # "depth":I
    .restart local v8    # "haveColor":Z
    .restart local v9    # "i":I
    .restart local v12    # "j":I
    .restart local v17    # "numAttrs":I
    .restart local v18    # "stateResId":I
    .restart local v19    # "stateSpec":[I
    :cond_c
    move v11, v12

    .end local v12    # "j":I
    .restart local v11    # "j":I
    goto :goto_2
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0, "color"    # I

    .prologue
    .line 98
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v4

    .line 99
    :try_start_0
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 100
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v0, v3

    .line 102
    .local v0, "csl":Landroid/content/res/ColorStateList;
    :goto_0
    if-eqz v0, :cond_1

    .line 103
    monitor-exit v4

    move-object v1, v0

    .line 108
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .local v1, "csl":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 100
    .end local v1    # "csl":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 107
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    monitor-exit v4

    move-object v1, v0

    .restart local v1    # "csl":Ljava/lang/Object;
    goto :goto_1

    .line 109
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v1    # "csl":Ljava/lang/Object;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .prologue
    .line 273
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .line 274
    .local v1, "setLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .line 276
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget p2, v3, v0

    .line 280
    .end local v2    # "stateSpec":[I
    .end local p2    # "defaultColor":I
    :cond_0
    return p2

    .line 274
    .restart local v2    # "stateSpec":[I
    .restart local p2    # "defaultColor":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 260
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 160
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .line 162
    .local v0, "colors":[I
    array-length v2, v0

    .line 163
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 164
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 304
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .line 305
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 307
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 310
    return-void
.end method
