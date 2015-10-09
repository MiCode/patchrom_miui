.class Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;
.super Ljava/lang/Object;
.source "Atlas.java"

# interfaces
.implements Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas$SlicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxAreaSplitDecision"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Atlas$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Atlas$1;

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;-><init>()V

    return-void
.end method


# virtual methods
.method public splitHorizontal(IIII)Z
    .locals 2
    .param p1, "freeWidth"    # I
    .param p2, "freeHeight"    # I
    .param p3, "rectWidth"    # I
    .param p4, "rectHeight"    # I

    .prologue
    .line 329
    mul-int v0, p3, p2

    mul-int v1, p1, p4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
