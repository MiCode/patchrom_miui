.class Lcom/android/settings/deviceinfo/Memory$4;
.super Landroid/os/storage/StorageEventListener;
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
    .line 466
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 470
    const-string v3, "MemorySettings"

    const-string v4, "onStorageStateChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Memory;->access$600(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$500(Lcom/android/settings/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Memory;->access$600(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$500(Lcom/android/settings/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received storage state changed notification that "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 478
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 479
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 486
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/Memory;->dynamicShowInstallLocation()V

    .line 489
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mIsApkInstallerExist:Z
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Memory;->access$700(Lcom/android/settings/deviceinfo/Memory;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/Memory;->dynamicShowAPKInstaller()V

    .line 492
    :cond_2
    return-void
.end method
