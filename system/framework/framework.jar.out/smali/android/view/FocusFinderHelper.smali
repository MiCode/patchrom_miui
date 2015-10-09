.class public Landroid/view/FocusFinderHelper;
.super Ljava/lang/Object;
.source "FocusFinderHelper.java"


# instance fields
.field private mFocusFinder:Landroid/view/FocusFinder;


# direct methods
.method public constructor <init>(Landroid/view/FocusFinder;)V
    .locals 0
    .param p1, "focusFinder"    # Landroid/view/FocusFinder;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    .line 34
    return-void
.end method

.method public static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .prologue
    .line 45
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method
