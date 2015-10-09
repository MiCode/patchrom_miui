.class Landroid/graphics/drawable/TransitionDrawable$TransitionState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "TransitionDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/TransitionDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionState"
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "orig"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "owner"    # Landroid/graphics/drawable/TransitionDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    .line 250
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 254
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    move-object v0, v1

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {v2, p0, v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable$1;)V

    return-object v2
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 259
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable$1;)V

    return-object v0
.end method
