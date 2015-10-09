.class public Landroid/app/MediaRouteActionProvider;
.super Landroid/view/ActionProvider;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteActionProvider$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouteActionProvider"


# instance fields
.field private mButton:Landroid/app/MediaRouteButton;

.field private final mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

.field private final mContext:Landroid/content/Context;

.field private mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    .line 60
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    .line 61
    new-instance v0, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-direct {v0, p0}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;-><init>(Landroid/app/MediaRouteActionProvider;)V

    iput-object v0, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteActionProvider;->setRouteTypes(I)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Landroid/app/MediaRouteActionProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/MediaRouteActionProvider;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    return-void
.end method

.method private refreshRoute()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/MediaRouteActionProvider;->refreshVisibility()V

    .line 152
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use onCreateActionView(MenuItem) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "MediaRouteActionProvider"

    const-string/jumbo v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old one..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    new-instance v0, Landroid/app/MediaRouteButton;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    .line 122
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    .line 123
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 124
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    .line 102
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    .prologue
    .line 76
    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    if-eq v0, p1, :cond_2

    .line 84
    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 87
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    .line 88
    if-eqz p1, :cond_1

    .line 89
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 92
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    .line 94
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 98
    :cond_2
    return-void
.end method
