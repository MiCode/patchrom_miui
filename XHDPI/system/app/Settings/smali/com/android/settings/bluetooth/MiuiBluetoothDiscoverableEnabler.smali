.class public Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;
.super Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.source "MiuiBluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter "context"
    .parameter "adapter"
    .parameter "discoveryPreference"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    .line 14
    return-void
.end method


# virtual methods
.method handleModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 29
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 19
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
