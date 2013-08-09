.class public Lcom/android/settings/display/AccelerometerEnabler;
.super Lcom/android/settings/BaseEnabler;
.source "AccelerometerEnabler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter "activity"
    .parameter "slidingButton"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 26
    const-string v1, "accelerometer"

    const-string v2, "accelerometer"

    const-string v3, "accelerometer"

    invoke-static {v3}, Lcom/android/settings/FrequentlySet;->getHeaderIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/provider/MiuiSettingsUtil;->addToCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 34
    .local v0, wm:Landroid/view/IWindowManager;
    iget-object v1, p0, Lcom/android/settings/display/AccelerometerEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 41
    .end local v0           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 37
    .restart local v0       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v0           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected update()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/settings/display/AccelerometerEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/android/settings/display/AccelerometerEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 53
    return-void
.end method
