.class public abstract Landroid/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionProvider$VisibilityListener;,
        Landroid/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider"


# instance fields
.field private mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 202
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionProvider$SubUiVisibilityListener;

    .prologue
    .line 221
    iput-object p1, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    .line 222
    return-void
.end method

.method public setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/ActionProvider$VisibilityListener;

    .prologue
    .line 231
    iget-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "ActionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iput-object p1, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    .line 237
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Landroid/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 215
    :cond_0
    return-void
.end method
