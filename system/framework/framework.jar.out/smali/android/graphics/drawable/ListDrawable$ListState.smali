.class final Landroid/graphics/drawable/ListDrawable$ListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "ListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListState"
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/graphics/drawable/ListDrawable;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "orig"    # Landroid/graphics/drawable/ListDrawable$ListState;
    .param p2, "owner"    # Landroid/graphics/drawable/ListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 51
    return-void
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/drawable/ListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ListDrawable;-><init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/drawable/ListDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/ListDrawable;-><init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/content/res/Resources;)V

    return-object v0
.end method
