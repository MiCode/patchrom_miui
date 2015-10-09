.class public Landroid/text/style/RasterizerSpan;
.super Landroid/text/style/CharacterStyle;
.source "RasterizerSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mRasterizer:Landroid/graphics/Rasterizer;


# direct methods
.method public constructor <init>(Landroid/graphics/Rasterizer;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rasterizer;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 28
    return-void
.end method


# virtual methods
.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;

    .line 37
    return-void
.end method
