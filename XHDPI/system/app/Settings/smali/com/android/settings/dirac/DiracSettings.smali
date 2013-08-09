.class public Lcom/android/settings/dirac/DiracSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DiracSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

.field private mPrefEarBuds:Lmiui/preference/RadioButtonPreference;

.field private mPrefEqualizer:Landroid/preference/Preference;

.field private mPrefInEar:Lmiui/preference/RadioButtonPreference;

.field private mPrefOff:Lmiui/preference/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/settings/dirac/DiracSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dirac/DiracSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 32
    return-void
.end method

.method private equalizerEnable()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v4, p0, Lcom/android/settings/dirac/DiracSettings;->mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/dirac/DiracUtils;->getDiracState(Landroid/content/Context;)I

    move-result v1

    .line 67
    .local v1, value:I
    const/4 v0, 0x0

    .line 68
    .local v0, pref:Lmiui/preference/RadioButtonPreference;
    packed-switch v1, :pswitch_data_0

    .line 79
    sget-object v4, Lcom/android/settings/dirac/DiracSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad value, value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefOff:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v4, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefInEar:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v4, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 85
    iget-object v4, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEarBuds:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v4, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 87
    iget-object v4, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEqualizer:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEqualizer:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefOff:Lmiui/preference/RadioButtonPreference;

    if-eq v0, v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 91
    :cond_1
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 94
    :cond_2
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefOff:Lmiui/preference/RadioButtonPreference;

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefInEar:Lmiui/preference/RadioButtonPreference;

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEarBuds:Lmiui/preference/RadioButtonPreference;

    .line 77
    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracSettings;->addPreferencesFromResource(I)V

    .line 40
    const-string v0, "mode_off"

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefOff:Lmiui/preference/RadioButtonPreference;

    .line 41
    iget-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefOff:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    const-string v0, "mode_in_ear"

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefInEar:Lmiui/preference/RadioButtonPreference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefInEar:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 44
    const-string v0, "mode_earbuds"

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEarBuds:Lmiui/preference/RadioButtonPreference;

    .line 45
    iget-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEarBuds:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracSettings;->equalizerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "dirac_equalizer"

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEqualizer:Landroid/preference/Preference;

    .line 52
    :goto_0
    invoke-static {}, Lcom/android/settings/dirac/DiracUtils;->getInstance()Lcom/android/settings/dirac/DiracUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dirac/DiracSettings;->mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    .line 53
    return-void

    .line 49
    :cond_0
    const-string v0, "equalizer_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefInEar:Lmiui/preference/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 100
    const/4 v0, 0x2

    .line 105
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dirac/DiracSettings;->mDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    invoke-virtual {p0}, Lcom/android/settings/dirac/DiracSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/dirac/DiracUtils;->setDiracState(Landroid/content/Context;I)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracSettings;->refresh()V

    .line 108
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dirac/DiracSettings;->mPrefEarBuds:Lmiui/preference/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracSettings;->refresh()V

    .line 63
    return-void
.end method
