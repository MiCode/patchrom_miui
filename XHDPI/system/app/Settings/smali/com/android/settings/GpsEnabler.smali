.class public Lcom/android/settings/GpsEnabler;
.super Lcom/android/settings/BaseEnabler;
.source "GpsEnabler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter "activity"
    .parameter "slidingButton"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    const-string v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 21
    const-string v1, "location_gps"

    const-string v2, "location_gps"

    const-string v3, "location_gps"

    invoke-static {v3}, Lcom/android/settings/FrequentlySet;->getHeaderIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/provider/MiuiSettingsUtil;->addToCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    iget-object v1, p0, Lcom/android/settings/GpsEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 26
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/settings/GpsEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 37
    iget-object v2, p0, Lcom/android/settings/GpsEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 38
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 40
    .local v0, gpsEnabled:Z
    iget-object v2, p0, Lcom/android/settings/GpsEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 41
    return-void
.end method
