.class Lcom/android/settings/deviceinfo/Memory$1;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    const-string v17, "MemorySettings"

    const-string v18, "Receive dynamic sd swap broadcast"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v13

    .line 148
    .local v13, newVolumes:[Landroid/os/storage/StorageVolume;
    move-object v3, v13

    .local v3, arr$:[Landroid/os/storage/StorageVolume;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v16, v3, v9

    .line 150
    .local v16, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 151
    .local v5, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    if-eqz v16, :cond_0

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 152
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 154
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 155
    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateStorageVolumePrefCategory()V

    goto :goto_1

    .line 161
    .end local v5           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->access$200(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    move-result-object v4

    .local v4, arr$:[Lcom/android/settings/deviceinfo/RadioButtonPreference;
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v14, v4, v8

    .line 162
    .local v14, pref:Lcom/android/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 148
    .end local v14           #pref:Lcom/android/settings/deviceinfo/RadioButtonPreference;
    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_0

    .line 168
    .end local v4           #arr$:[Lcom/android/settings/deviceinfo/RadioButtonPreference;
    .end local v12           #len$:I
    .end local v16           #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    const-string v17, "SD_EXIST"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 169
    .local v10, isExternalSD:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->access$300(Lcom/android/settings/deviceinfo/Memory;)Landroid/preference/ListPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 172
    if-eqz v10, :cond_6

    .line 174
    const-string v15, ""

    .line 175
    .local v15, sdDescription:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 176
    aget-object v17, v13, v7

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 179
    aget-object v17, v13, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 184
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->access$300(Lcom/android/settings/deviceinfo/Memory;)Landroid/preference/ListPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 185
    .local v6, entries:[Ljava/lang/CharSequence;
    const/16 v17, 0x1

    aput-object v15, v6, v17

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/deviceinfo/Memory;->access$300(Lcom/android/settings/deviceinfo/Memory;)Landroid/preference/ListPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 188
    .end local v6           #entries:[Ljava/lang/CharSequence;
    .end local v7           #i:I
    .end local v15           #sdDescription:Ljava/lang/String;
    :cond_6
    return-void

    .line 175
    .restart local v7       #i:I
    .restart local v15       #sdDescription:Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method
