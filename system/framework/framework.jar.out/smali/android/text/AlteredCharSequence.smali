.class public Landroid/text/AlteredCharSequence;
.super Ljava/lang/Object;
.source "AlteredCharSequence.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AlteredCharSequence$1;,
        Landroid/text/AlteredCharSequence$AlteredSpanned;
    }
.end annotation


# instance fields
.field private mChars:[C

.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;[CII)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "sub"    # [C
    .param p3, "substart"    # I
    .param p4, "subend"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 45
    iput-object p2, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 46
    iput p3, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 47
    iput p4, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # [C
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/text/AlteredCharSequence$1;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method

.method public static make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;
    .locals 6
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # [C
    .param p2, "substart"    # I
    .param p3, "subend"    # I

    .prologue
    .line 36
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Landroid/text/AlteredCharSequence$AlteredSpanned;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/AlteredCharSequence;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "off"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    if-ge p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .prologue
    .line 106
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 108
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 109
    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 111
    if-le p1, p2, :cond_0

    .line 112
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 101
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int/2addr v2, p1

    iget v3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/text/AlteredCharSequence;->length()I

    move-result v0

    .line 118
    .local v0, "len":I
    new-array v1, v0, [C

    .line 119
    .local v1, "ret":[C
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->getChars(II[CI)V

    .line 120
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method update([CII)V
    .locals 0
    .param p1, "sub"    # [C
    .param p2, "substart"    # I
    .param p3, "subend"    # I

    .prologue
    .line 51
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 52
    iput p2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 53
    iput p3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 54
    return-void
.end method
