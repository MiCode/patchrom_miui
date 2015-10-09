.class public abstract Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.super Ljava/lang/Object;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/view/AccessibilityIterators$TextSegmentIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTextSegmentIterator"
.end annotation


# instance fields
.field private final mSegment:[I

.field protected mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    return-void
.end method


# virtual methods
.method protected getRange(II)[I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 60
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 64
    iget-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 65
    iget-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    .line 57
    return-void
.end method
