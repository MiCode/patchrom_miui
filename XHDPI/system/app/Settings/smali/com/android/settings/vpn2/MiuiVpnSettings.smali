.class public Lcom/android/settings/vpn2/MiuiVpnSettings;
.super Lcom/android/settings/vpn2/VpnSettings;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/MiuiVpnSettings$1;,
        Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;
    }
.end annotation


# instance fields
.field private mIsNewPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsNewPassword:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->updateResult(Z)V

    return-void
.end method

.method private setEnablePassword(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateResult(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 204
    const-string v2, "vpn_password_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 205
    .local v1, vpnPasswordEnable:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 206
    .local v0, isEnable:Z
    if-nez p1, :cond_0

    .line 207
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 208
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->setEnablePassword(Z)V

    .line 211
    :cond_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected editProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 1
    .parameter "vpnProfile"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->editProfile(Lcom/android/internal/net/VpnProfile;Z)V

    .line 238
    return-void
.end method

.method protected editProfile(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/EditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v1, "edit_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "profile"

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 244
    const-string v1, "profile_key"

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "profile_add"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/vpn2/VpnSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    const/16 v6, 0x64

    if-ne p1, v6, :cond_2

    .line 168
    if-ne p2, v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings/vpn2/MiuiVpnSettings;->updateResult(Z)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    const/16 v6, 0x65

    if-ne p1, v6, :cond_1

    if-ne p2, v7, :cond_1

    .line 171
    const-string v6, "profile"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 172
    .local v2, profile:[B
    const-string v6, "profile_key"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, profileKey:Ljava/lang/String;
    const-string v6, "profile_delete"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, delete:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 178
    invoke-static {v3, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 179
    .local v4, vnpProfile:Lcom/android/internal/net/VpnProfile;
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 180
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v0, :cond_3

    .line 181
    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn2/MiuiVpnSettings;->disconnect(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 188
    :cond_3
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 190
    if-eqz v1, :cond_4

    .line 191
    iget-object v5, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/vpn2/MiuiVpnSettings;->disconnect(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v4}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    goto :goto_0

    .line 194
    :cond_4
    new-instance v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, p0, v5, v4}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 195
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v5, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/MiuiVpnSettings;->setHasOptionsMenu(Z)V

    .line 66
    const-string v1, "vpn_password_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 67
    .local v0, vpnPasswordEnable:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 69
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 73
    :goto_0
    const-string v1, "vpn_configure_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    .line 74
    return-void

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 220
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    const v0, 0x7f0c068d

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x60200f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, millis:J
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 230
    :cond_0
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/vpn2/MiuiVpnSettings;->editProfile(Lcom/android/internal/net/VpnProfile;Z)V

    .line 232
    .end local v0           #millis:J
    :cond_1
    return v4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 278
    .end local p1
    :goto_0
    return v1

    .line 262
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 263
    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 264
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 273
    :cond_1
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0, v0, v2}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 276
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 278
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, key:Ljava/lang/String;
    const-string v8, "vpn_password_enable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v0, p2

    .line 101
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 102
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 103
    .local v3, isEnable:Z
    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/MiuiVpnSettings;->setEnablePassword(Z)V

    .line 105
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 106
    .local v1, helper:Lmiui/security/ChooseLockSettingsHelper;
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 107
    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v3, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_2

    .line 109
    new-instance v8, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-direct {v8, p0, v9}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings$1;)V

    .line 116
    .end local v0           #checkBoxPreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #helper:Lmiui/security/ChooseLockSettingsHelper;
    .end local v3           #isEnable:Z
    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/vpn2/VpnSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    .line 117
    .local v7, ret:Z
    if-eqz v7, :cond_1

    .line 118
    instance-of v8, p2, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v8, :cond_1

    .line 119
    check-cast p2, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 120
    .local v6, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v8, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v8, :cond_1

    iget-object v8, v6, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v8, v8, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 122
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v2

    .line 123
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->startActivity(Landroid/content/Intent;)V

    .line 127
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return v7

    .line 112
    .end local v7           #ret:Z
    .restart local v0       #checkBoxPreference:Landroid/preference/CheckBoxPreference;
    .restart local v1       #helper:Lmiui/security/ChooseLockSettingsHelper;
    .restart local v3       #isEnable:Z
    .restart local v5       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local p2
    :cond_2
    const/16 v8, 0x64

    invoke-virtual {v1, v8, v9, v9}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/settings/vpn2/VpnSettings;->onResume()V

    .line 80
    iget-boolean v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsNewPassword:Z

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsNewPassword:Z

    .line 83
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->updateResult(Z)V

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f0c08e1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 93
    .local v1, vpnPreference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
