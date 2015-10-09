.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "alphabet"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 84
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 85
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 86
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 87
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 97
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "letter"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v0, " "

    .line 134
    .local v0, "firstLetter":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 131
    .end local v0    # "firstLetter":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "firstLetter":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 17
    .param p1, "sectionIndex"    # I

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 148
    .local v1, "alphaMap":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 150
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v15, :cond_2

    .line 151
    :cond_0
    const/4 v9, 0x0

    .line 248
    :cond_1
    :goto_0
    return v9

    .line 155
    :cond_2
    if-gtz p1, :cond_3

    .line 156
    const/4 v9, 0x0

    goto :goto_0

    .line 158
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    move/from16 v0, p1

    if-lt v0, v15, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v15, -0x1

    .line 162
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 164
    .local v12, "savedCursorPos":I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 165
    .local v2, "count":I
    const/4 v13, 0x0

    .line 166
    .local v13, "start":I
    move v6, v2

    .line 169
    .local v6, "end":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 170
    .local v8, "letter":C
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    .line 171
    .local v14, "targetLetter":Ljava/lang/String;
    move v7, v8

    .line 173
    .local v7, "key":I
    const/high16 v15, -0x80000000

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .local v9, "pos":I
    if-eq v15, v9, :cond_5

    .line 177
    if-gez v9, :cond_1

    .line 178
    neg-int v9, v9

    .line 179
    move v6, v9

    .line 187
    :cond_5
    if-lez p1, :cond_6

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v16, p1, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 190
    .local v10, "prevLetter":I
    const/high16 v15, -0x80000000

    invoke-virtual {v1, v10, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 191
    .local v11, "prevLetterPos":I
    const/high16 v15, -0x80000000

    if-eq v11, v15, :cond_6

    .line 192
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 198
    .end local v10    # "prevLetter":I
    .end local v11    # "prevLetterPos":I
    :cond_6
    add-int v15, v6, v13

    div-int/lit8 v9, v15, 0x2

    .line 200
    :goto_1
    if-ge v9, v6, :cond_7

    .line 202
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "curName":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 205
    if-nez v9, :cond_8

    .line 246
    .end local v3    # "curName":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 208
    .restart local v3    # "curName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 209
    goto :goto_1

    .line 212
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 213
    .local v5, "diff":I
    if-eqz v5, :cond_c

    .line 225
    if-gez v5, :cond_a

    .line 226
    add-int/lit8 v13, v9, 0x1

    .line 227
    if-lt v13, v2, :cond_b

    .line 228
    move v9, v2

    .line 229
    goto :goto_2

    .line 232
    :cond_a
    move v6, v9

    .line 244
    :cond_b
    :goto_3
    add-int v15, v13, v6

    div-int/lit8 v9, v15, 0x2

    .line 245
    goto :goto_1

    .line 236
    :cond_c
    if-eq v13, v9, :cond_7

    .line 241
    move v6, v9

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 256
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 257
    .local v3, "savedCursorPos":I
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 258
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "curName":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 263
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 264
    .local v2, "letter":C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "targetLetter":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 269
    .end local v1    # "i":I
    .end local v2    # "letter":C
    .end local v4    # "targetLetter":Ljava/lang/String;
    :goto_1
    return v1

    .line 262
    .restart local v1    # "i":I
    .restart local v2    # "letter":C
    .restart local v4    # "targetLetter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "letter":C
    .end local v4    # "targetLetter":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 278
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 279
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 287
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 288
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 117
    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    :cond_1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 121
    return-void
.end method
