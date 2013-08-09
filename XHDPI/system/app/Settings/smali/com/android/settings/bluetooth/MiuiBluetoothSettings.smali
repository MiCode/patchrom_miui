.class public Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.super Lcom/android/settings/bluetooth/BluetoothSettings;
.source "MiuiBluetoothSettings.java"


# instance fields
.field private mClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mDeviceNameEditPreference:Lmiui/preference/ValuePreference;

.field private mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private renameMyDevice()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/provider/ExtraSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, bluetoothName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesForActivity()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 40
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "bluetooth_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothEnablePreference:Landroid/preference/CheckBoxPreference;

    .line 41
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    .line 42
    const-string v1, "bluetooth_device_name_edit"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lmiui/preference/ValuePreference;

    .line 43
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lmiui/preference/ValuePreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 45
    const-string v1, "bluetooth_device_searchable"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    .line 46
    return-void
.end method

.method createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .parameter "cachedDevice"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/MiuiSearchDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    .line 34
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 108
    .local v1, bluetoothIsEnabled:Z
    :goto_1
    const v4, 0x7f0c017f

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 109
    .local v0, addItem:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {v4}, Lcom/android/settings/MiuiSearchDrawable;->getSearchIcon()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 110
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 111
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateProgressUi(Z)V

    goto :goto_0

    .end local v0           #addItem:Landroid/view/MenuItem;
    .end local v1           #bluetoothIsEnabled:Z
    :cond_2
    move v1, v3

    .line 107
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    .line 120
    .local v0, isDiscovering:Z
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 123
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 51
    const-string v0, "bluetooth_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->checkedChanged(Z)V

    .line 54
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected updateContent(IZ)V
    .locals 5
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->renameMyDevice()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 78
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    packed-switch p1, :pswitch_data_0

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0c0061

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0c0863

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 95
    return-void

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 81
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 82
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 83
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSearchDrawable;->playAnimation()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSearchDrawable;->stopAnimation()V

    goto :goto_0
.end method
