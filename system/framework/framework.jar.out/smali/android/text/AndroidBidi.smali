.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B
    .param p3, "n"    # I
    .param p4, "haveInfo"    # Z

    .prologue
    .line 28
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 32
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    .line 33
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 36
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 41
    :pswitch_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 45
    .local v0, "result":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 46
    :goto_1
    return v0

    .line 37
    .end local v0    # "result":I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 39
    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    .line 40
    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .line 45
    .restart local v0    # "result":I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 23
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    .prologue
    .line 63
    if-nez p5, :cond_0

    .line 64
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 176
    :goto_0
    return-object v21

    .line 67
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, p0

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/4 v2, 0x0

    .line 68
    .local v2, "baseLevel":I
    :goto_1
    aget-byte v4, p1, p2

    .line 69
    .local v4, "curLevel":I
    move v13, v4

    .line 70
    .local v13, "minLevel":I
    const/16 v17, 0x1

    .line 71
    .local v17, "runCount":I
    add-int/lit8 v7, p2, 0x1

    .local v7, "i":I
    add-int v5, p2, p5

    .local v5, "e":I
    :goto_2
    if-ge v7, v5, :cond_3

    .line 72
    aget-byte v9, p1, v7

    .line 73
    .local v9, "level":I
    if-eq v9, v4, :cond_1

    .line 74
    move v4, v9

    .line 75
    add-int/lit8 v17, v17, 0x1

    .line 71
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 67
    .end local v2    # "baseLevel":I
    .end local v4    # "curLevel":I
    .end local v5    # "e":I
    .end local v7    # "i":I
    .end local v9    # "level":I
    .end local v13    # "minLevel":I
    .end local v17    # "runCount":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 80
    .restart local v2    # "baseLevel":I
    .restart local v4    # "curLevel":I
    .restart local v5    # "e":I
    .restart local v7    # "i":I
    .restart local v13    # "minLevel":I
    .restart local v17    # "runCount":I
    :cond_3
    move/from16 v19, p5

    .line 81
    .local v19, "visLen":I
    and-int/lit8 v21, v4, 0x1

    and-int/lit8 v22, v2, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 83
    :cond_4
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_5

    .line 84
    add-int v21, p4, v19

    aget-char v3, p3, v21

    .line 86
    .local v3, "ch":C
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v3, v0, :cond_7

    .line 87
    add-int/lit8 v19, v19, -0x1

    .line 95
    .end local v3    # "ch":C
    :cond_5
    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 96
    move/from16 v0, v19

    move/from16 v1, p5

    if-eq v0, v1, :cond_6

    .line 97
    add-int/lit8 v17, v17, 0x1

    .line 101
    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    if-ne v13, v2, :cond_9

    .line 103
    and-int/lit8 v21, v13, 0x1

    if-eqz v21, :cond_8

    .line 104
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    goto :goto_0

    .line 91
    .restart local v3    # "ch":C
    :cond_7
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v3, v0, :cond_4

    const/16 v21, 0x9

    move/from16 v0, v21

    if-eq v3, v0, :cond_4

    goto :goto_3

    .line 106
    .end local v3    # "ch":C
    :cond_8
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_0

    .line 109
    :cond_9
    mul-int/lit8 v21, v17, 0x2

    move/from16 v0, v21

    new-array v8, v0, [I

    .line 110
    .local v8, "ld":[I
    move v12, v13

    .line 111
    .local v12, "maxLevel":I
    shl-int/lit8 v10, v13, 0x1a

    .line 116
    .local v10, "levelBits":I
    const/4 v14, 0x1

    .line 117
    .local v14, "n":I
    move/from16 v16, p2

    .line 118
    .local v16, "prev":I
    move v4, v13

    .line 119
    move/from16 v7, p2

    add-int v5, p2, v19

    move v15, v14

    .end local v14    # "n":I
    .local v15, "n":I
    :goto_4
    if-ge v7, v5, :cond_c

    .line 120
    aget-byte v9, p1, v7

    .line 121
    .restart local v9    # "level":I
    if-eq v9, v4, :cond_16

    .line 122
    move v4, v9

    .line 123
    if-le v9, v12, :cond_b

    .line 124
    move v12, v9

    .line 129
    :cond_a
    :goto_5
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "n":I
    .restart local v14    # "n":I
    sub-int v21, v7, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    .line 130
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "n":I
    .restart local v15    # "n":I
    sub-int v21, v7, p2

    aput v21, v8, v14

    .line 131
    shl-int/lit8 v10, v4, 0x1a

    .line 132
    move/from16 v16, v7

    move v14, v15

    .line 119
    .end local v15    # "n":I
    .restart local v14    # "n":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    .end local v14    # "n":I
    .restart local v15    # "n":I
    goto :goto_4

    .line 125
    :cond_b
    if-ge v9, v13, :cond_a

    .line 126
    move v13, v9

    goto :goto_5

    .line 135
    .end local v9    # "level":I
    :cond_c
    add-int v21, p2, v19

    sub-int v21, v21, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    .line 136
    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_15

    .line 137
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "n":I
    .restart local v14    # "n":I
    aput v19, v8, v14

    .line 138
    add-int/lit8 v14, v14, 0x1

    sub-int v21, p5, v19

    shl-int/lit8 v22, v2, 0x1a

    or-int v21, v21, v22

    aput v21, v8, v14

    .line 153
    :goto_7
    and-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_e

    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    if-le v12, v13, :cond_d

    const/16 v18, 0x1

    .line 159
    .local v18, "swap":Z
    :goto_8
    if-eqz v18, :cond_14

    .line 160
    add-int/lit8 v9, v12, -0x1

    .restart local v9    # "level":I
    :goto_9
    if-lt v9, v13, :cond_14

    .line 161
    const/4 v7, 0x0

    :goto_a
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_13

    .line 162
    aget v21, v8, v7

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_12

    .line 163
    add-int/lit8 v5, v7, 0x2

    .line 164
    :goto_b
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_10

    aget v21, v8, v5

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_10

    .line 165
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 155
    .end local v9    # "level":I
    .end local v18    # "swap":Z
    :cond_d
    const/16 v18, 0x0

    goto :goto_8

    .line 157
    :cond_e
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    const/16 v18, 0x1

    .restart local v18    # "swap":Z
    :goto_c
    goto :goto_8

    .end local v18    # "swap":Z
    :cond_f
    const/16 v18, 0x0

    goto :goto_c

    .line 167
    .restart local v9    # "level":I
    .restart local v18    # "swap":Z
    :cond_10
    move v11, v7

    .local v11, "low":I
    add-int/lit8 v6, v5, -0x2

    .local v6, "hi":I
    :goto_d
    if-ge v11, v6, :cond_11

    .line 168
    aget v20, v8, v11

    .local v20, "x":I
    aget v21, v8, v6

    aput v21, v8, v11

    aput v20, v8, v6

    .line 169
    add-int/lit8 v21, v11, 0x1

    aget v20, v8, v21

    add-int/lit8 v21, v11, 0x1

    add-int/lit8 v22, v6, 0x1

    aget v22, v8, v22

    aput v22, v8, v21

    add-int/lit8 v21, v6, 0x1

    aput v20, v8, v21

    .line 167
    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_d

    .line 171
    .end local v20    # "x":I
    :cond_11
    add-int/lit8 v7, v5, 0x2

    .line 161
    .end local v6    # "hi":I
    .end local v11    # "low":I
    :cond_12
    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    .line 160
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 176
    .end local v9    # "level":I
    :cond_14
    new-instance v21, Landroid/text/Layout$Directions;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_0

    .end local v14    # "n":I
    .end local v18    # "swap":Z
    .restart local v15    # "n":I
    :cond_15
    move v14, v15

    .end local v15    # "n":I
    .restart local v14    # "n":I
    goto :goto_7

    .end local v14    # "n":I
    .restart local v9    # "level":I
    .restart local v15    # "n":I
    :cond_16
    move v14, v15

    .end local v15    # "n":I
    .restart local v14    # "n":I
    goto/16 :goto_6
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
