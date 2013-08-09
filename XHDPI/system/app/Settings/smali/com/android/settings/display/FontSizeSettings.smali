.class public Lcom/android/settings/display/FontSizeSettings;
.super Landroid/preference/PreferenceActivity;
.source "FontSizeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sUiModeOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSelectedOrder:I

.field private mUiModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FontSizePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    .line 26
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v9, 0x7f06002d

    invoke-virtual {p0, v9}, Lcom/android/settings/display/FontSizeSettings;->addPreferencesFromResource(I)V

    .line 42
    const/4 v3, 0x0

    .line 44
    .local v3, order:Ljava/lang/Integer;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 45
    .local v1, config:Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 46
    sget-object v9, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    iget v11, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v11, v11, 0xf

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_1
    iput v9, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 54
    .local v6, resources:Landroid/content/res/Resources;
    const v9, 0x7f080060

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, title:[Ljava/lang/String;
    const v9, 0x7f080061

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 58
    .local v5, previewSize:[I
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 59
    .local v7, root:Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v9, v8

    if-ge v2, v9, :cond_3

    .line 60
    new-instance v4, Lcom/android/settings/FontSizePreference;

    invoke-direct {v4, p0}, Lcom/android/settings/FontSizePreference;-><init>(Landroid/content/Context;)V

    .line 61
    .local v4, preference:Lcom/android/settings/FontSizePreference;
    invoke-virtual {v4, v2}, Lcom/android/settings/FontSizePreference;->setOrder(I)V

    .line 62
    aget-object v9, v8, v2

    invoke-virtual {v4, v9}, Lcom/android/settings/FontSizePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v9, 0x7f0c0870

    invoke-virtual {v4, v9}, Lcom/android/settings/FontSizePreference;->setSummary(I)V

    .line 64
    aget v9, v5, v2

    invoke-virtual {v4, v9}, Lcom/android/settings/FontSizePreference;->setSize(I)V

    .line 65
    invoke-virtual {v4, p0}, Lcom/android/settings/FontSizePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    iget v9, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    if-ne v2, v9, :cond_2

    move v9, v10

    :goto_3
    invoke-virtual {v4, v9}, Lcom/android/settings/FontSizePreference;->setChecked(Z)V

    .line 68
    iget-object v9, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v4           #preference:Lcom/android/settings/FontSizePreference;
    .end local v5           #previewSize:[I
    .end local v6           #resources:Landroid/content/res/Resources;
    .end local v7           #root:Landroid/preference/PreferenceGroup;
    .end local v8           #title:[Ljava/lang/String;
    :cond_1
    move v9, v10

    .line 50
    goto :goto_1

    .line 66
    .restart local v2       #i:I
    .restart local v4       #preference:Lcom/android/settings/FontSizePreference;
    .restart local v5       #previewSize:[I
    .restart local v6       #resources:Landroid/content/res/Resources;
    .restart local v7       #root:Landroid/preference/PreferenceGroup;
    .restart local v8       #title:[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 71
    .end local v4           #preference:Lcom/android/settings/FontSizePreference;
    :cond_3
    return-void

    .line 48
    .end local v2           #i:I
    .end local v5           #previewSize:[I
    .end local v6           #resources:Landroid/content/res/Resources;
    .end local v7           #root:Landroid/preference/PreferenceGroup;
    .end local v8           #title:[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 77
    .local v1, order:I
    iget v4, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    if-eq v1, v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/FontSizePreference;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings/FontSizePreference;->setChecked(Z)V

    .line 79
    iput v1, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    .line 81
    sget-object v4, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 83
    .local v3, uiMode:I
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "ui_mode_scale"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x6060018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, scale:[Ljava/lang/String;
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 92
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    sparse-switch v4, :sswitch_data_0

    .line 102
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 104
    const/4 v4, 0x1

    .line 109
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #order:I
    .end local v2           #scale:[Ljava/lang/String;
    .end local v3           #uiMode:I
    :goto_1
    return v4

    .line 99
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #order:I
    .restart local v2       #scale:[Ljava/lang/String;
    .restart local v3       #uiMode:I
    :sswitch_0
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x10

    or-int/2addr v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #order:I
    .end local v2           #scale:[Ljava/lang/String;
    .end local v3           #uiMode:I
    :catch_0
    move-exception v4

    :cond_0
    move v4, v5

    .line 109
    goto :goto_1

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method
