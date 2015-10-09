.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

.field private static final DATA_DIRECTORY:Ljava/io/File;

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final DIR_MEDIA_STORAGE:Ljava/io/File;

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

.field private static final ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final ENV_EMULATED_STORAGE_SOURCE:Ljava/lang/String; = "EMULATED_STORAGE_SOURCE"

.field private static final ENV_EMULATED_STORAGE_TARGET:Ljava/lang/String; = "EMULATED_STORAGE_TARGET"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_MEDIA_STORAGE:Ljava/lang/String; = "MEDIA_STORAGE"

.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File;

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sPrimaryVolume:Landroid/os/storage/StorageVolume;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sUserRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    .line 59
    const-string v0, "MEDIA_STORAGE"

    const-string v1, "/data/media"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    .line 61
    const-string v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Landroid/os/Environment;->getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    .line 97
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 308
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 314
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 317
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 419
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 431
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 443
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 455
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 467
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 475
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 483
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 493
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 500
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 506
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 547
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 592
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 556
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 583
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 565
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 574
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 807
    move-object v1, p0

    .line 808
    .local v1, "cur":Ljava/io/File;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .local v2, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 809
    .local v5, "segment":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 810
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v2    # "cur":Ljava/io/File;
    goto :goto_0

    .line 812
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_1

    .line 815
    .end local v1    # "cur":Ljava/io/File;
    .end local v5    # "segment":Ljava/lang/String;
    .restart local v2    # "cur":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static varargs buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 794
    array-length v2, p0

    new-array v1, v2, [Ljava/io/File;

    .line 795
    .local v1, "result":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 796
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    return-object v1
.end method

.method private static getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 764
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 772
    :goto_0
    return-object v2

    .line 769
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getEmulatedStorageObbSource()Ljava/io/File;
    .locals 3

    .prologue
    .line 407
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "obb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEmulatedStorageSource(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 401
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 384
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 385
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 538
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 690
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Ljava/io/File;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 395
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 284
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getMediaDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 75
    const-string v3, "config.disable_storage"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v3, 0x0

    .line 93
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :goto_0
    return-object v3

    .line 79
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_2

    .line 80
    sget-object v4, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 81
    :try_start_0
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 83
    :try_start_1
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 85
    .restart local v1    # "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 86
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    sput-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v2    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_2
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Environment"

    const-string v5, "couldn\'t talk to MountService"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 706
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 713
    .local v5, "rawPath":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 715
    .local v4, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 716
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 717
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 718
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 724
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "rawPath":Ljava/lang/String;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v8

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Environment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to resolve target path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string/jumbo v8, "unknown"

    goto :goto_1

    .line 716
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "rawPath":Ljava/lang/String;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v1

    .line 722
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "Environment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find external storage state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v8, "unknown"

    goto :goto_1
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 295
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 103
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 105
    sget-object v2, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 107
    monitor-exit v2

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 305
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 2

    .prologue
    .line 754
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 755
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 737
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 832
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 851
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object p0

    .line 838
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 839
    .local v2, "rawPath":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 840
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 842
    .local v1, "internalPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object p0, v1

    .line 843
    goto :goto_0

    .line 846
    .end local v1    # "internalPath":Ljava/io/File;
    .end local v2    # "rawPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 847
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUserRequired(Z)V
    .locals 0
    .param p0, "userRequired"    # Z

    .prologue
    .line 778
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    .line 779
    return-void
.end method

.method private static throwIfUserRequired()V
    .locals 3

    .prologue
    .line 782
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "Environment"

    const-string v1, "Path requests must specify a user by using UserEnvironment"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    :cond_0
    return-void
.end method
