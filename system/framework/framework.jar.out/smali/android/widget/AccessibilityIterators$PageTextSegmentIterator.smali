.class Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
.super Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageTextSegmentIterator"
.end annotation


# static fields
.field private static sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    .line 127
    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x0

    .line 137
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 138
    .local v8, "textLegth":I
    if-gtz v8, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v9

    .line 141
    :cond_1
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge p1, v10, :cond_0

    .line 144
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v11, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 148
    const/4 v9, 0x0

    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 150
    .local v7, "start":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 151
    .local v0, "currentLine":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 152
    .local v1, "currentLineTop":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v10

    sub-int v6, v9, v10

    .line 154
    .local v6, "pageHeight":I
    add-int v5, v1, v6

    .line 155
    .local v5, "nextPageStartY":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 156
    .local v4, "lastLineTop":I
    if-ge v5, v4, :cond_2

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 159
    .local v2, "currentPageEndLine":I
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 161
    .local v3, "end":I
    invoke-virtual {p0, v7, v3}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v9

    goto :goto_0

    .line 156
    .end local v2    # "currentPageEndLine":I
    .end local v3    # "end":I
    :cond_2
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    goto :goto_1
.end method

.method public initialize(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    .line 132
    iput-object p1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    .line 133
    return-void
.end method

.method public preceding(I)[I
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x0

    .line 166
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 167
    .local v7, "textLegth":I
    if-gtz v7, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v8

    .line 170
    :cond_1
    if-lez p1, :cond_0

    .line 173
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 179
    .local v3, "end":I
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 180
    .local v0, "currentLine":I
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 181
    .local v1, "currentLineTop":I
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    sub-int v4, v8, v9

    .line 183
    .local v4, "pageHeight":I
    sub-int v5, v1, v4

    .line 184
    .local v5, "previousPageEndY":I
    if-lez v5, :cond_2

    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 187
    .local v2, "currentPageStartLine":I
    :goto_1
    const/4 v8, -0x1

    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v6

    .line 189
    .local v6, "start":I
    invoke-virtual {p0, v6, v3}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v8

    goto :goto_0

    .line 184
    .end local v2    # "currentPageStartLine":I
    .end local v6    # "start":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
