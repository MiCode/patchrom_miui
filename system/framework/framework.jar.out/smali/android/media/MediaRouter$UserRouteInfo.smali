.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation


# instance fields
.field mRcc:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .prologue
    .line 1986
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1987
    const/high16 v0, 0x800000

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 1988
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 1989
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 1990
    return-void
.end method

.method private setPlaybackInfoOnRcc(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "value"    # I

    .prologue
    .line 2208
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 2211
    :cond_0
    return-void
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 4

    .prologue
    .line 2186
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2187
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x3

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 2189
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x2

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 2191
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x4

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 2193
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x5

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 2195
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 2199
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v2}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    :cond_0
    :goto_0
    return-void

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error registering remote volume observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 2141
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2142
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 2143
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 2152
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2153
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 2154
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 2026
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 2027
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2028
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2074
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2075
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2084
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2085
    return-void
.end method

.method public setName(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2011
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2012
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2013
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2014
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1997
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1998
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 1999
    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 2179
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 2180
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 2181
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 2183
    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2102
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 2103
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2104
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 2106
    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "rcc"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 2053
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 2054
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 2055
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 2036
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2037
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 2128
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2129
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_0

    .line 2130
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 2131
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 2132
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2133
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2137
    :cond_0
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;

    .prologue
    .line 2092
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 2093
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    .prologue
    .line 2115
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 2116
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2117
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 2120
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    .prologue
    .line 2168
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 2169
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 2170
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 2172
    :cond_0
    return-void
.end method
