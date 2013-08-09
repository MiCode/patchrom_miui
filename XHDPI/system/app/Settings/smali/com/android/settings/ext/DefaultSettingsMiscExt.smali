.class public Lcom/android/settings/ext/DefaultSettingsMiscExt;
.super Ljava/lang/Object;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/android/settings/ext/ISettingsMiscExt;


# instance fields
.field private mApnToUseId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/ext/DefaultSettingsMiscExt;->mApnToUseId:J

    return-void
.end method


# virtual methods
.method public getApnPref(Landroid/preference/PreferenceGroup;I[I)Landroid/preference/Preference;
    .locals 1
    .parameter "apnList"
    .parameter "count"
    .parameter "array"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "type"
    .parameter "apn"
    .parameter "numeric"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public removeTetherApnSettings(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefSc"
    .parameter "preference"

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 40
    return-void
.end method
