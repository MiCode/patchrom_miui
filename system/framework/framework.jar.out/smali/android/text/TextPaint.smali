.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 54
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 63
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 64
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 65
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 66
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 67
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 68
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 69
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 70
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 79
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 80
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 81
    return-void
.end method
