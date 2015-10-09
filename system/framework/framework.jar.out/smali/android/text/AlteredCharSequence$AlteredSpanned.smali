.class Landroid/text/AlteredCharSequence$AlteredSpanned;
.super Landroid/text/AlteredCharSequence;
.source "AlteredCharSequence.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AlteredCharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlteredSpanned"
.end annotation


# instance fields
.field private mSpanned:Landroid/text/Spanned;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;[CII)V
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "sub"    # [C
    .param p3, "substart"    # I
    .param p4, "subend"    # I

    .prologue
    .line 62
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V

    .line 63
    check-cast p1, Landroid/text/Spanned;

    .end local p1    # "source":Ljava/lang/CharSequence;
    iput-object p1, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    .line 64
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
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method


# virtual methods
.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method
