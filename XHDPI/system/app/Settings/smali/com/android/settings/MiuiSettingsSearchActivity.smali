.class public Lcom/android/settings/MiuiSettingsSearchActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettingsSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettingsSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 24
    invoke-static {v0}, Lcom/android/settings/FrequentlySet;->getShowIndex(I)I

    move-result v0

    .line 25
    invoke-static {}, Lcom/android/settings/FrequentlySet;->getHeaderIds()[I

    move-result-object v1

    .line 26
    invoke-static {v0}, Lcom/android/settings/FrequentlySet;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v3, "airplane_mode_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/MiuiSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettingsSearchActivity;->finish()V

    .line 46
    return-void

    .line 30
    :cond_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    aget v0, v1, v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/MiuiSettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 35
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 36
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 37
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const/4 v2, 0x0

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/android/settings/MiuiSettingsSearchActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
