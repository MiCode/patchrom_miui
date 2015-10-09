.class Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParagraphTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 264
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xa

    .line 326
    if-lez p1, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStartBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xa

    .line 321
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v4, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 270
    .local v2, "textLength":I
    if-gtz v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v3

    .line 273
    :cond_1
    if-ge p1, v2, :cond_0

    .line 276
    move v1, p1

    .line 277
    .local v1, "start":I
    if-gez v1, :cond_2

    .line 278
    const/4 v1, 0x0

    .line 281
    :cond_2
    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :cond_3
    if-ge v1, v2, :cond_0

    .line 287
    add-int/lit8 v0, v1, 0x1

    .line 288
    .local v0, "end":I
    :goto_2
    if-ge v0, v2, :cond_4

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    :cond_4
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_0
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-object v4, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 297
    .local v2, "textLength":I
    if-gtz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v3

    .line 300
    :cond_1
    if-lez p1, :cond_0

    .line 303
    move v0, p1

    .line 304
    .local v0, "end":I
    if-le v0, v2, :cond_2

    .line 305
    move v0, v2

    .line 307
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    iget-object v4, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 308
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 310
    :cond_3
    if-lez v0, :cond_0

    .line 313
    add-int/lit8 v1, v0, -0x1

    .line 314
    .local v1, "start":I
    :goto_2
    if-lez v1, :cond_4

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 317
    :cond_4
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_0
.end method
