.class public abstract Lcom/android/settings/sound/BaseSoundActivity;
.super Landroid/app/Activity;
.source "BaseSoundActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPickerIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, ringtonePickerIntent:Landroid/content/Intent;
    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneType()I

    move-result v1

    .line 26
    .local v1, type:I
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    const-string v2, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneTitleId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/sound/BaseSoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method protected abstract getRingtoneTitleId()I
.end method

.method protected abstract getRingtoneType()I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 40
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneType()I

    move-result v1

    .line 42
    .local v1, type:I
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 43
    .local v0, ringtoneUri:Landroid/net/Uri;
    invoke-static {p0, v1, v0}, Landroid/media/ExtraRingtoneManager;->resolveDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    invoke-static {p0, v1, v0}, Landroid/media/ExtraRingtoneManager;->setRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 46
    .end local v0           #ringtoneUri:Landroid/net/Uri;
    .end local v1           #type:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->finish()V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getPickerIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/sound/BaseSoundActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 17
    return-void
.end method
