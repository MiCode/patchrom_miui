.class abstract Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .locals 0
    .param p1, "algorithm"    # Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .line 122
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_0
.end method

.method public isRtl([CII)Z
    .locals 1
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 131
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
