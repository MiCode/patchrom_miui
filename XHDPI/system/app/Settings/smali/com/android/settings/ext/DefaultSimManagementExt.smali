.class public Lcom/android/settings/ext/DefaultSimManagementExt;
.super Ljava/lang/Object;
.source "DefaultSimManagementExt.java"

# interfaces
.implements Lcom/android/settings/ext/ISimManagementExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealWithDataConnChanged(Landroid/content/Intent;Z)V
    .locals 0
    .parameter "intent"
    .parameter "isResumed"

    .prologue
    .line 38
    return-void
.end method

.method public setToClosedSimSlot(I)V
    .locals 0
    .parameter "simSlot"

    .prologue
    .line 48
    return-void
.end method

.method public showChangeDataConnDialog(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .parameter "prefFragment"

    .prologue
    .line 42
    const-string v0, "DefaultSimManagementExt"

    const-string v1, "showChangeDataConnDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter "parent"

    .prologue
    .line 19
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, pref3GService:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .line 22
    .local v2, prefWapPush:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 23
    .local v1, prefStatus:Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_0

    .line 24
    const-string v3, "3g_service_settings"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref3GService:Landroid/preference/PreferenceScreen;
    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 25
    .restart local v0       #pref3GService:Landroid/preference/PreferenceScreen;
    const-string v3, "status_info"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #prefStatus:Landroid/preference/PreferenceScreen;
    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 27
    .restart local v1       #prefStatus:Landroid/preference/PreferenceScreen;
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove pref3GService"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 31
    :cond_1
    if-eqz v1, :cond_2

    .line 32
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove prefStatus"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 35
    :cond_2
    return-void
.end method
