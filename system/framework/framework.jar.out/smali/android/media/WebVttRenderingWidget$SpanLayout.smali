.class Landroid/media/WebVttRenderingWidget$SpanLayout;
.super Lcom/android/internal/widget/SubtitleView;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanLayout"
.end annotation


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private final mSpans:[Landroid/media/TextTrackCueSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spans"    # [Landroid/media/TextTrackCueSpan;

    .prologue
    .line 1808
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;)V

    .line 1804
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1810
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 1812
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->update()V

    .line 1813
    return-void
.end method


# virtual methods
.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 1
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1834
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setBackgroundColor(I)V

    .line 1835
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setForegroundColor(I)V

    .line 1836
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setEdgeColor(I)V

    .line 1837
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setEdgeType(I)V

    .line 1838
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1839
    invoke-virtual {p0, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setTextSize(F)V

    .line 1840
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1816
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1817
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 1819
    .local v4, "spans":[Landroid/media/TextTrackCueSpan;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1820
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1822
    array-length v3, v4

    .line 1823
    .local v3, "spanCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1824
    aget-object v2, v4, v1

    .line 1825
    .local v2, "span":Landroid/media/TextTrackCueSpan;
    iget-boolean v5, v2, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    if-eqz v5, :cond_0

    .line 1826
    aget-object v5, v4, v1

    iget-object v5, v5, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1823
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1830
    .end local v2    # "span":Landroid/media/TextTrackCueSpan;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setText(Ljava/lang/CharSequence;)V

    .line 1831
    return-void
.end method
