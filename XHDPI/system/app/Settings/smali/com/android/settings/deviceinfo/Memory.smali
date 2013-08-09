.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mApkInstallePref:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field private mDefaultWritePathAdded:[Z

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mIsApkInstallerExist:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

.field private mUiHandler:Landroid/os/Handler;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    .line 466
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 617
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$5;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 865
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$10;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$10;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doMount()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Memory;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Memory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Memory;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/Memory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 336
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 337
    return-void
.end method

.method private doMount()V
    .locals 2

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 766
    .local v0, mountService:Landroid/os/storage/IMountService;
    new-instance v1, Lcom/android/settings/deviceinfo/Memory$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/Memory$9;-><init>(Lcom/android/settings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/Memory$9;->start()V

    .line 783
    return-void
.end method

.method private doUnmount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 681
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0989

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 688
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 690
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v1, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 691
    sget-object v1, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 693
    sget-object v1, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 696
    new-instance v1, Lcom/android/settings/deviceinfo/Memory$8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/Memory$8;-><init>(Lcom/android/settings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/Memory$8;->start()V

    .line 709
    return-void

    .line 685
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c031b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private dynamicShowDefaultWriteCategory()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 872
    const-string v0, "MemorySettings"

    const-string v2, "dynamicShowDefaultWriteCategory"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 874
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 875
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 876
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 877
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " volume state is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v2, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 880
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 881
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 883
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v7, v2, v0

    .line 874
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 888
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 890
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 895
    :cond_2
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    .line 896
    const-string v0, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get default path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 897
    :goto_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 898
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 899
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 900
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    .line 897
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 902
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    goto :goto_3

    .line 905
    :cond_4
    return-void
.end method

.method private dynamicUpdateUnmountDlg()V
    .locals 6

    .prologue
    .line 379
    const-string v3, "MemorySettings"

    const-string v4, "dynamicUpdateUnmountDlg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 392
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :goto_1
    return-void

    .line 381
    .restart local v1       #volumeState:Ljava/lang/String;
    .restart local v2       #writePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "current status is MTP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 948
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 949
    const-string v0, "device"

    .line 956
    :goto_0
    return-object v0

    .line 950
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 951
    const-string v0, "sdcard"

    goto :goto_0

    .line 952
    :cond_1
    if-nez v0, :cond_2

    .line 953
    const-string v0, "auto"

    goto :goto_0

    .line 956
    :cond_2
    const-string v0, "auto"

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 549
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 550
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 551
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 556
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 553
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 548
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 717
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 718
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 719
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 733
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 342
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 343
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 909
    if-eqz p1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 912
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 913
    :catch_0
    move-exception v1

    .line 914
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 918
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "the package name cannot be null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mount()V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doMount()V

    .line 762
    return-void
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 786
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 787
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 789
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 714
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 750
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public dynamicShowAPKInstaller()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, flag:Z
    const-string v6, "MemorySettings"

    const-string v7, "dynamicShowAPKInstaller"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 456
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, writePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, volumeState:Ljava/lang/String;
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " volume state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v0, :cond_0

    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 455
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 460
    goto :goto_1

    .line 463
    .end local v2           #volumeState:Ljava/lang/String;
    .end local v3           #writePath:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    return-void

    :cond_2
    move v4, v5

    .line 463
    goto :goto_2
.end method

.method public dynamicShowInstallLocation()V
    .locals 6

    .prologue
    .line 398
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 423
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :goto_1
    return-void

    .line 400
    .restart local v1       #volumeState:Ljava/lang/String;
    .restart local v2       #writePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "current status is not UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 926
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 942
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 943
    return-void

    .line 930
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 934
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 939
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 196
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 200
    .local v1, context:Landroid/content/Context;
    const-string v14, "usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/usb/UsbManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 202
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v14, v15}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 205
    const v14, 0x7f06002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 207
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    .line 209
    const-string v14, "memory_select"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 215
    const-string v14, "MemorySettings"

    const-string v15, "not sd + swap, add internal storage"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, mPathList:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v12

    .line 227
    .local v12, volumes:[Landroid/os/storage/StorageVolume;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v8, mVolumePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v9, storageVolumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    array-length v5, v7

    .line 231
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 232
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Volume: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,state is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    aget-object v17, v7, v3

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,emulated is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", path is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v14, "not_present"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v16, v7, v3

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 236
    aget-object v14, v7, v3

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    aget-object v14, v12, v3

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 242
    .local v6, length:I
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "default path group length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-array v14, v6, [Lcom/android/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    .line 245
    new-array v14, v6, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    .line 247
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_3

    .line 248
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    .line 249
    .local v11, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    new-instance v15, Lcom/android/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v3

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v15, v14, v3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v14, v14, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v15, v14, v3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings/deviceinfo/RadioButtonPreference;

    aget-object v14, v14, v3

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-nez v14, :cond_2

    .line 261
    const-string v14, "MemorySettings"

    const-string v15, "no share + swap, add non-emulated category"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v1, v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 247
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    .end local v11           #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 269
    const-string v14, "apk_installer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    .line 270
    const-string v14, "com.mediatek.apkinstaller"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    .line 271
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    if-eqz v14, :cond_5

    .line 272
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v4, intent:Landroid/content/Intent;
    const-string v14, "com.mediatek.apkinstaller"

    const-string v15, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/high16 v14, 0x80

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    invoke-virtual {v14, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 282
    .end local v4           #intent:Landroid/content/Intent;
    :goto_2
    const-string v14, "app_install_location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    .line 283
    const-string v13, ""

    .line 284
    .local v13, whereStr:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_3
    array-length v14, v12

    if-ge v3, v14, :cond_4

    .line 285
    aget-object v14, v12, v3

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 287
    aget-object v14, v12, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 291
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 292
    .local v2, entries:[Ljava/lang/CharSequence;
    const/4 v14, 0x1

    aput-object v13, v2, v14

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v14, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "set_install_location"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v10, 0x1

    .line 297
    .local v10, userSetInstLocation:Z
    :goto_4
    if-nez v10, :cond_8

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :goto_5
    new-instance v14, Lcom/android/settings/deviceinfo/Memory$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    .line 331
    return-void

    .line 278
    .end local v2           #entries:[Ljava/lang/CharSequence;
    .end local v10           #userSetInstLocation:Z
    .end local v13           #whereStr:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 284
    .restart local v13       #whereStr:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 295
    .restart local v2       #entries:[Ljava/lang/CharSequence;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 300
    .restart local v10       #userSetInstLocation:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v15, Lcom/android/settings/deviceinfo/Memory$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f0c00ea

    const v3, 0x7f0c040a

    const/4 v1, 0x0

    .line 637
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 677
    :goto_0
    return-object v0

    .line 639
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0985

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$6;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$6;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c0986

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0317

    goto :goto_1

    :cond_1
    const v0, 0x7f0c0318

    goto :goto_2

    .line 656
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c0987

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0c0988

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0319

    goto :goto_3

    :cond_3
    const v0, 0x7f0c031a

    goto :goto_4

    .line 665
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0ac4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$7;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$7;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0ac5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 520
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 521
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 515
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 516
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 544
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 533
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0321

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 542
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x7f0902e6
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 497
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 500
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 501
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 503
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x0

    .line 854
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/settings/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 858
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 859
    check-cast p1, Lcom/android/settings/deviceinfo/RadioButtonPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    .line 860
    const/4 v0, 0x1

    .line 862
    :cond_1
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 562
    const-string v8, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 563
    invoke-static {p0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settings/deviceinfo/Memory;)V

    .line 614
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 567
    .restart local p2
    :cond_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 568
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 570
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 572
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 575
    instance-of v8, p2, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v8, :cond_0

    .line 576
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0984

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 587
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 588
    .local v5, volume:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 589
    sput-object p2, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 590
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/deviceinfo/Memory;->mIsRemovableVolume:Z

    .line 591
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, mIsRemovableVolume is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/deviceinfo/Memory;->mIsRemovableVolume:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 593
    sget-object v7, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v8, "/mnt/usbotg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    .line 594
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 597
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    goto/16 :goto_0

    .line 599
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto/16 :goto_0

    .line 605
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #state:Ljava/lang/String;
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    if-eqz p2, :cond_8

    instance-of v8, p2, Lcom/android/settings/deviceinfo/RadioButtonPreference;

    if-eqz v8, :cond_8

    .line 606
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    if-eqz v8, :cond_7

    .line 607
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v8, v7}, Lcom/android/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 609
    :cond_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 610
    check-cast p2, Lcom/android/settings/deviceinfo/RadioButtonPreference;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings/deviceinfo/RadioButtonPreference;

    goto/16 :goto_0

    .restart local p2
    :cond_8
    move v6, v7

    .line 614
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 525
    const v1, 0x7f0902e6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 526
    .local v0, usb:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    return-void

    .line 526
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 349
    const-string v3, "MemorySettings"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->dynamicUpdateUnmountDlg()V

    .line 362
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->dynamicShowInstallLocation()V

    .line 366
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->dynamicShowAPKInstaller()V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    .line 372
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 373
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 376
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    return-void
.end method
