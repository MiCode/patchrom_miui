.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 466
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "direction"    # I
    .param p2, "off1"    # I
    .param p3, "off2"    # I

    .prologue
    .line 417
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 418
    .local v3, "line1":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 420
    .local v4, "line2":I
    if-ne v3, v4, :cond_3

    .line 423
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 424
    .local v0, "h1":F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 426
    .local v1, "h2":F
    if-gez p1, :cond_2

    .line 429
    cmpg-float v6, v0, v1

    if-gez v6, :cond_1

    .line 454
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    .end local p2    # "off1":I
    :cond_0
    :goto_0
    return p2

    .restart local v0    # "h1":F
    .restart local v1    # "h2":F
    .restart local p2    # "off1":I
    :cond_1
    move p2, p3

    .line 432
    goto :goto_0

    .line 436
    :cond_2
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_0

    move p2, p3

    .line 439
    goto :goto_0

    .line 448
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 449
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 451
    .local v5, "textdir":I
    if-ne v5, p1, :cond_4

    .line 452
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 454
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x1

    .line 282
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 283
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 285
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 288
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 290
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 291
    .local v1, "h":F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 296
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 303
    .end local v3    # "move":I
    :cond_0
    :goto_1
    return v6

    .line 293
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3    # "move":I
    goto :goto_0

    .line 298
    .end local v3    # "move":I
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 299
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v2, 0x1

    .line 311
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 312
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 314
    .local v1, "to":I
    if-eq v1, v0, :cond_0

    .line 315
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 319
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v2, 0x1

    .line 327
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 328
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 330
    .local v1, "to":I
    if-eq v1, v0, :cond_0

    .line 331
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 335
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 101
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 102
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 103
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 339
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 340
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 341
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 346
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 347
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x1

    .line 253
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 254
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 256
    .local v2, "line":I
    if-lez v2, :cond_2

    .line 259
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 261
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 262
    .local v1, "h":F
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 267
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 274
    .end local v3    # "move":I
    :cond_0
    :goto_1
    return v6

    .line 264
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3    # "move":I
    goto :goto_0

    .line 269
    .end local v3    # "move":I
    :cond_2
    if-eqz v0, :cond_0

    .line 270
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "dir"    # I

    .prologue
    .line 399
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 400
    .local v3, "pt":I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 401
    .local v1, "line":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 403
    .local v2, "pdir":I
    mul-int v4, p2, v2

    if-gez v4, :cond_1

    .line 404
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 408
    .local v0, "end":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 411
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 52
    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 39
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 41
    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 164
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 166
    .local v0, "end":I
    if-eq v6, v0, :cond_2

    .line 167
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 168
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 170
    .local v3, "max":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 172
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 196
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_0
    :goto_0
    return v7

    .restart local v3    # "max":I
    .restart local v4    # "min":I
    :cond_1
    move v7, v8

    .line 176
    goto :goto_0

    .line 178
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 180
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_0

    .line 183
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 185
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 186
    .local v1, "h":F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 191
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 192
    goto :goto_0

    .line 188
    .end local v5    # "move":I
    :cond_3
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5    # "move":I
    goto :goto_1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 206
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 208
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    .line 209
    const/4 v4, -0x1

    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 220
    :goto_0
    return v3

    .line 212
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .line 214
    .local v2, "to":I
    if-eq v2, v0, :cond_1

    .line 215
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 220
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x1

    .line 230
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 231
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 233
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    .line 234
    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 245
    :goto_0
    return v3

    .line 237
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .line 239
    .local v2, "to":I
    if-eq v2, v0, :cond_1

    .line 240
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 245
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .prologue
    .line 387
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 388
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 389
    if-eqz p2, :cond_1

    .line 390
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 395
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 392
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 351
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 352
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 353
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .prologue
    .line 373
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 374
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 375
    if-eqz p2, :cond_1

    .line 376
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 381
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 378
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v1, 0x1

    .line 357
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 358
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 359
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 123
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 125
    .local v0, "end":I
    if-eq v6, v0, :cond_2

    .line 126
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 127
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 129
    .local v3, "max":I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 155
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_0
    :goto_0
    return v7

    .restart local v3    # "max":I
    .restart local v4    # "min":I
    :cond_1
    move v7, v8

    .line 135
    goto :goto_0

    .line 137
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 139
    .local v2, "line":I
    if-lez v2, :cond_0

    .line 142
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 144
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 145
    .local v1, "h":F
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 150
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 151
    goto :goto_0

    .line 147
    .end local v5    # "move":I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5    # "move":I
    goto :goto_1
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 109
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 110
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 95
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 87
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 88
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 73
    .local v1, "ostart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 75
    .local v0, "oend":I
    if-ne v1, p1, :cond_0

    if-eq v0, p2, :cond_1

    .line 76
    :cond_0
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 78
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 81
    :cond_1
    return-void
.end method
