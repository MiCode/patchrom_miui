.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 45
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 50
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;I)V
    .locals 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 85
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 86
    const/4 v2, 0x0

    .line 91
    .local v2, "oldStyle":I
    :goto_0
    or-int v4, v2, p1

    .line 94
    .local v4, "want":I
    if-nez v1, :cond_3

    .line 95
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 100
    .local v3, "tf":Landroid/graphics/Typeface;
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int v0, v4, v5

    .line 102
    .local v0, "fake":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 103
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 106
    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    .line 107
    const/high16 v5, -0x41800000    # -0.25f

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 110
    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 111
    return-void

    .line 88
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    .end local v3    # "tf":Landroid/graphics/Typeface;
    .end local v4    # "want":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2    # "oldStyle":I
    goto :goto_0

    .line 97
    .restart local v4    # "want":I
    :cond_3
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .restart local v3    # "tf":Landroid/graphics/Typeface;
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 73
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    .line 74
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 78
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
