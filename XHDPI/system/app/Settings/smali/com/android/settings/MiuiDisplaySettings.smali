.class public Lcom/android/settings/MiuiDisplaySettings;
.super Lcom/android/settings/DisplaySettings;
.source "MiuiDisplaySettings.java"


# instance fields
.field private mScreenOnProximitySensor:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenOnProximitySensor:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenOnProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 14
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onResume()V

    .line 15
    const-string v0, "screen_on_proximity_sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenOnProximitySensor:Landroid/preference/CheckBoxPreference;

    .line 16
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenOnProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_screen_on_proximity_sensor"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 19
    return-void
.end method
