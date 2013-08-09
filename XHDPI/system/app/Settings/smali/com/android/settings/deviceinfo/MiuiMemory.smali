.class public Lcom/android/settings/deviceinfo/MiuiMemory;
.super Lcom/android/settings/deviceinfo/Memory;
.source "MiuiMemory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mUsbMode:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI:Z

    if-nez v1, :cond_0

    .line 49
    const-string v1, "usb_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    .line 50
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v1, "usb_mode_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 53
    .local v0, preference:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0321

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 101
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/MiuiMemory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 73
    const-string v1, "usb_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, index:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    .end local v0           #index:I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 84
    const v1, 0x7f0902e6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 85
    .local v0, usb:Landroid/view/MenuItem;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/deviceinfo/Memory;->onResume()V

    .line 60
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    .end local v0           #mode:I
    :cond_0
    return-void
.end method
