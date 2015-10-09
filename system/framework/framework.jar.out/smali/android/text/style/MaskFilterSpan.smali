.class public Landroid/text/style/MaskFilterSpan;
.super Landroid/text/style/CharacterStyle;
.source "MaskFilterSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mFilter:Landroid/graphics/MaskFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/MaskFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/MaskFilter;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    .line 28
    return-void
.end method


# virtual methods
.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 37
    return-void
.end method
