.class public final Landroid/util/FastImmutableArraySet;
.super Ljava/util/AbstractSet;
.source "FastImmutableArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/FastImmutableArraySet$FastIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIterator:Landroid/util/FastImmutableArraySet$FastIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet$FastIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet;->mIterator:Landroid/util/FastImmutableArraySet$FastIterator;

    .line 41
    .local v0, "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/util/FastImmutableArraySet$FastIterator;

    .end local v0    # "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    iget-object v1, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet$FastIterator;-><init>([Ljava/lang/Object;)V

    .line 43
    .restart local v0    # "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    iput-object v0, p0, Landroid/util/FastImmutableArraySet;->mIterator:Landroid/util/FastImmutableArraySet$FastIterator;

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/util/FastImmutableArraySet$FastIterator;->mIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
