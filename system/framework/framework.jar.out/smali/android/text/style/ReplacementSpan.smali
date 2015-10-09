.class public abstract Landroid/text/style/ReplacementSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ReplacementSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
.end method

.method public abstract getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 42
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 36
    return-void
.end method
