.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoText:Z

.field private mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 47
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, ".,1!@#$%^&*:/?\'=()"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "abc2ABC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "def3DEF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "ghi4GHI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "jkl5JKL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "mno6MNO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string/jumbo v2, "pqrs7PQRS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string/jumbo v2, "tuv8TUV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string/jumbo v2, "wxyz9WXYZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "0+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 63
    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    .line 64
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 74
    .local v0, "off":I
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 75
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 78
    :cond_0
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 72
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static removeTimeouts(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "buf"    # Landroid/text/Spannable;

    .prologue
    .line 243
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 245
    .local v2, "timeout":[Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 246
    aget-object v1, v2, v0

    .line 248
    .local v1, "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    invoke-virtual {v1, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    const/4 v3, 0x0

    # setter for: Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;
    invoke-static {v1, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->access$002(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;

    .line 250
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    const/16 v26, 0x0

    .line 90
    .local v26, "pref":I
    if-eqz p1, :cond_0

    .line 91
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v26

    .line 95
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v13

    .line 96
    .local v13, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v17

    .line 98
    .local v17, "b":I
    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 99
    .local v3, "selStart":I
    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 102
    .local v4, "selEnd":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 103
    .local v15, "activeStart":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 110
    .local v14, "activeEnd":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/high16 v7, -0x1000000

    and-int/2addr v2, v7

    ushr-int/lit8 v27, v2, 0x18

    .line 113
    .local v27, "rec":I
    if-ne v15, v3, :cond_8

    if-ne v14, v4, :cond_8

    sub-int v2, v4, v3

    const/4 v7, 0x1

    if-ne v2, v7, :cond_8

    if-ltz v27, :cond_8

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_8

    .line 116
    const/16 v2, 0x11

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 117
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v19

    .line 119
    .local v19, "current":C
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 122
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 123
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 125
    const/4 v2, 0x1

    .line 231
    .end local v19    # "current":C
    :goto_0
    return v2

    .line 127
    .restart local v19    # "current":C
    :cond_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 130
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 131
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 133
    const/4 v2, 0x1

    goto :goto_0

    .line 137
    .end local v19    # "current":C
    :cond_2
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    move/from16 v0, v27

    if-ne v2, v0, :cond_3

    .line 138
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, "val":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 140
    .local v18, "ch":C
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 142
    .local v6, "ix":I
    if-ltz v6, :cond_3

    .line 143
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v6, v2, v7

    .line 145
    add-int/lit8 v7, v6, 0x1

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 146
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 147
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 149
    const/4 v2, 0x1

    goto :goto_0

    .line 158
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "ix":I
    .end local v18    # "ch":C
    :cond_3
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v27

    .line 160
    if-ltz v27, :cond_4

    .line 161
    move-object/from16 v0, p2

    invoke-static {v0, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 162
    move v3, v4

    .line 168
    :cond_4
    :goto_1
    if-ltz v27, :cond_c

    .line 173
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 175
    .restart local v5    # "val":Ljava/lang/String;
    const/4 v11, 0x0

    .line 176
    .local v11, "off":I
    and-int/lit8 v2, v26, 0x1

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 179
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 180
    move/from16 v11, v20

    .line 186
    .end local v20    # "i":I
    :cond_5
    if-eq v3, v4, :cond_6

    .line 187
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 190
    :cond_6
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v7, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v3, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 193
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v7, p2

    move v8, v3

    move v9, v4

    move-object v10, v5

    invoke-interface/range {v7 .. v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 195
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    .line 196
    .local v25, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 198
    move/from16 v0, v25

    if-eq v4, v0, :cond_7

    .line 199
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 201
    sget-object v2, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v2, v1, v4, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 205
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    shl-int/lit8 v7, v27, 0x18

    or-int/lit8 v7, v7, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v2, v1, v4, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 213
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 218
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_b

    .line 219
    const/4 v2, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Landroid/text/method/KeyListener;

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/text/method/KeyListener;

    .line 221
    .local v24, "methods":[Landroid/text/method/KeyListener;
    move-object/from16 v16, v24

    .local v16, "arr$":[Landroid/text/method/KeyListener;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v23, v16, v21

    .line 222
    .local v23, "method":Landroid/text/method/KeyListener;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 221
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 165
    .end local v5    # "val":Ljava/lang/String;
    .end local v11    # "off":I
    .end local v16    # "arr$":[Landroid/text/method/KeyListener;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "method":Landroid/text/method/KeyListener;
    .end local v24    # "methods":[Landroid/text/method/KeyListener;
    .end local v25    # "oldStart":I
    :cond_8
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v27

    goto/16 :goto_1

    .line 178
    .restart local v5    # "val":Ljava/lang/String;
    .restart local v11    # "off":I
    .restart local v20    # "i":I
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 224
    .end local v20    # "i":I
    .restart local v16    # "arr$":[Landroid/text/method/KeyListener;
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    .restart local v24    # "methods":[Landroid/text/method/KeyListener;
    .restart local v25    # "oldStart":I
    :cond_a
    const/4 v2, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v7

    const/16 v8, 0x12

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2, v7, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    .end local v16    # "arr$":[Landroid/text/method/KeyListener;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "methods":[Landroid/text/method/KeyListener;
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 231
    .end local v5    # "val":Ljava/lang/String;
    .end local v11    # "off":I
    .end local v25    # "oldStart":I
    :cond_c
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 287
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "start"    # I
    .param p6, "stop"    # I

    .prologue
    .line 236
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 237
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 238
    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 240
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 288
    return-void
.end method
