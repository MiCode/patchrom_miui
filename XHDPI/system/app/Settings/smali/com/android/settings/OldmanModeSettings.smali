.class public Lcom/android/settings/OldmanModeSettings;
.super Landroid/preference/PreferenceActivity;
.source "OldmanModeSettings.java"


# static fields
.field public static KEY_OLDMAN_MODE_ENABLE:Ljava/lang/String;


# instance fields
.field private mEnableOldmanMode:Landroid/preference/CheckBoxPreference;

.field private mSummaryPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "enable_oldman_mode"

    sput-object v0, Lcom/android/settings/OldmanModeSettings;->KEY_OLDMAN_MODE_ENABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OldmanModeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mEnableOldmanMode:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/android/settings/OldmanModeSettings;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    sget-object v0, Lcom/android/settings/OldmanModeSettings;->KEY_OLDMAN_MODE_ENABLE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/OldmanModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mEnableOldmanMode:Landroid/preference/CheckBoxPreference;

    .line 32
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mEnableOldmanMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/OldmanHelper;->isOldmanMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mEnableOldmanMode:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/OldmanModeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/OldmanModeSettings$1;-><init>(Lcom/android/settings/OldmanModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    new-instance v0, Lcom/android/settings/OldmanModeSettings$2;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/OldmanModeSettings$2;-><init>(Lcom/android/settings/OldmanModeSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mSummaryPreference:Landroid/preference/Preference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings;->mSummaryPreference:Landroid/preference/Preference;

    const v1, 0x7f0400b3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/OldmanModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OldmanModeSettings;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    return-void
.end method
