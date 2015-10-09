.class public abstract Landroid/widget/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Landroid/view/View;II)I
.end method

.method getBounds()Landroid/widget/GridLayout$Bounds;
    .locals 2

    .prologue
    .line 2591
    new-instance v0, Landroid/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$Bounds;-><init>(Landroid/widget/GridLayout$1;)V

    return-object v0
.end method

.method abstract getGravityOffset(Landroid/view/View;I)I
.end method

.method getSizeInCell(Landroid/view/View;II)I
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "cellSize"    # I

    .prologue
    .line 2587
    return p2
.end method
