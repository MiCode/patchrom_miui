.class public Landroid/graphics/drawable/ListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "ListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ListDrawable$ListState;
    }
.end annotation


# instance fields
.field private final mListState:Landroid/graphics/drawable/ListDrawable$ListState;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/ListDrawable$ListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/drawable/ListDrawable$ListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ListDrawable$ListState;-><init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/graphics/drawable/ListDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mListState:Landroid/graphics/drawable/ListDrawable$ListState;

    .line 13
    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mListState:Landroid/graphics/drawable/ListDrawable$ListState;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 15
    if-eqz p2, :cond_0

    .line 16
    iput-object p2, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->enableFade(Z)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public addDrawable(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 22
    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mListState:Landroid/graphics/drawable/ListDrawable$ListState;

    iget-object v1, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ListDrawable$ListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    .line 25
    :cond_0
    return-void
.end method

.method public enableFade(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/R$integer;->config_shortAnimTime:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setEnterFadeDuration(I)V

    .line 30
    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/R$integer;->config_mediumAnimTime:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setExitFadeDuration(I)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setEnterFadeDuration(I)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setExitFadeDuration(I)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 41
    move v0, p1

    .line 42
    .local v0, "idx":I
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onLevelChange(I)Z

    move-result v1

    goto :goto_0
.end method
