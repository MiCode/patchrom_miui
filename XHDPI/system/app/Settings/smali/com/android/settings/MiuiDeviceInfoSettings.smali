.class public Lcom/android/settings/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lmiui/v5/view/ActionBarMovableLayout$Callback;
.implements Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;,
        Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    }
.end annotation


# static fields
.field private static final CHANCE:[D

.field private static final PICTURES:[I

.field private static final SOUNDS:[Ljava/lang/String;

.field private static sTotalInternalMemory:J


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceName:Lmiui/preference/ValuePreference;

.field private mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field mHits:[J

.field private mLogo:Landroid/widget/ImageView;

.field private mMeasurementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUpdateHandler:Landroid/os/Handler;

.field private receiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    .line 76
    new-array v0, v3, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    return-void

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
    .end array-data

    .line 76
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x40t 0x33t 0x33t 0xe3t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x3ft
        0x0t 0x0t 0x0t 0xa0t 0x99t 0x99t 0xb9t 0x3ft
        0x0t 0x0t 0x0t 0x40t 0xe1t 0x7at 0xa4t 0x3ft
        0x0t 0x0t 0x0t 0x40t 0xe1t 0x7at 0x84t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    .line 576
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 577
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 628
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$3;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    return-void
.end method

.method private fillOverview()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 517
    const-string v0, "device_internal_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 519
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    iget-wide v1, v1, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 520
    sget-boolean v3, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 522
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v5, v3

    .line 524
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->adjustAvailable(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 527
    :cond_1
    const v3, 0x7f0c07a0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-static {}, Lcom/android/settings/MiuiDeviceInfoSettings;->getTotalInternalMemory()J

    move-result-wide v2

    .line 529
    const v4, 0x7f0c07a1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCpuInfo()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v8, 0x19

    const/4 v0, 0x0

    const/high16 v7, 0x447a

    .line 467
    .line 469
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v2, Lcom/android/settings/MiuiDeviceInfoSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$2;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 482
    const-string v1, ""

    .line 483
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 484
    const v1, 0x7f0c079e

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    :cond_0
    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 486
    const v1, 0x7f0c079f

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 487
    :goto_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 488
    sget-boolean v2, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_HONGMI:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_U9200:Z

    if-eqz v2, :cond_2

    .line 489
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 491
    :cond_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 492
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 496
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    const-wide/16 v5, 0xc

    add-long/2addr v2, v5

    const-wide/16 v5, 0x19

    div-long/2addr v2, v5

    mul-long/2addr v2, v8

    long-to-float v3, v2

    .line 497
    const-string v2, "MHz"

    .line 498
    cmpl-float v5, v3, v7

    if-ltz v5, :cond_3

    .line 499
    div-float/2addr v3, v7

    .line 500
    const-string v2, "GHz"

    .line 502
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    .line 506
    if-eqz v1, :cond_4

    .line 508
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 513
    :cond_4
    :goto_1
    return-object v0

    .line 506
    :cond_5
    if-eqz v1, :cond_4

    .line 508
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 509
    :catch_0
    move-exception v1

    goto :goto_1

    .line 504
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 506
    :goto_2
    if-eqz v1, :cond_4

    .line 508
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 509
    :catch_2
    move-exception v1

    goto :goto_1

    .line 506
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    if-eqz v1, :cond_6

    .line 508
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 510
    :cond_6
    :goto_4
    throw v0

    .line 509
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 506
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 504
    :catch_5
    move-exception v2

    goto :goto_2

    :cond_7
    move-object v4, v1

    goto/16 :goto_0
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 386
    :try_start_0
    const-string v5, "/proc/version"

    invoke-direct {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, procVersionStr:Ljava/lang/String;
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 398
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 399
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 401
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 402
    const-string v5, "MiuiDeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex did not match on /proc/version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v5, "Unavailable"

    .line 416
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 404
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 405
    const-string v5, "MiuiDeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex match on /proc/version only returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " groups"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v5, "Unavailable"

    goto :goto_0

    .line 409
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 411
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 412
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MiuiDeviceInfoSettings"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const-string v5, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 428
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 431
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 435
    :catch_0
    move-exception v1

    .line 438
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 433
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getTotalInternalMemory()J
    .locals 10

    .prologue
    const-wide/32 v8, 0x3b9aca00

    const-wide/16 v6, 0x4

    const-wide/16 v4, 0x1

    .line 535
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 538
    :try_start_0
    const-string v0, "/proc/partitions"

    const-string v1, "mmcblk0"

    invoke-static {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 541
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    .line 542
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v2, 0x7a1200

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 543
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    mul-long/2addr v0, v8

    mul-long/2addr v0, v6

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_0
    :goto_0
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    return-wide v0

    .line 545
    :cond_1
    :try_start_1
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    mul-long/2addr v0, v8

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hasGeminiStatus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    :try_start_0
    const-string v2, "com.mediatek.gemini.GeminiStatus"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    .local v0, geminiFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 270
    .end local v0           #geminiFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private miuiFormatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 376
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private static readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 565
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 334
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "MiuiDeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    .line 349
    .local v1, valuePreference:Lmiui/preference/ValuePreference;
    :try_start_0
    invoke-virtual {v1, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 359
    .local v0, valuePreference:Lmiui/preference/ValuePreference;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0           #valuePreference:Lmiui/preference/ValuePreference;
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isContentVerticalScrolled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, retval:Z
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 677
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 679
    .local v2, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 682
    .end local v2           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v1

    .restart local v2       #view:Landroid/view/View;
    :cond_2
    move v1, v3

    .line 679
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "icicle"

    .prologue
    .line 116
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v22, 0x7f060021

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 118
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 120
    const-string v22, "model_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lmiui/preference/ValuePreference;

    .line 121
    .local v15, modeNumber:Lmiui/preference/ValuePreference;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 122
    const-string v22, "2013022"

    invoke-virtual {v15}, Lmiui/preference/ValuePreference;->getValue()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    sget-boolean v22, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v22, :cond_0

    .line 123
    const-string v22, "HM 1"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 126
    :cond_0
    const-string v22, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lmiui/preference/ValuePreference;

    .line 127
    .local v10, firmwareVersion:Lmiui/preference/ValuePreference;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lmiui/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 129
    const-string v22, "device_miui_version"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MIUI-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v22, "device_cpu"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lmiui/preference/ValuePreference;

    .line 132
    .local v8, deviceCpu:Lmiui/preference/ValuePreference;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getCpuInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 134
    const-string v22, "device_memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lmiui/preference/ValuePreference;

    .line 135
    .local v9, deviceMemory:Lmiui/preference/ValuePreference;
    invoke-static {}, Lmiui/os/Environment;->getTotalPhysicalMemory()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    .line 136
    .local v21, totalRam:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 138
    const-string v22, "baseband_version"

    const-string v23, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v22, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lmiui/preference/ValuePreference;

    .line 140
    .local v13, kernelVersion:Lmiui/preference/ValuePreference;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 144
    .local v5, category:Landroid/preference/PreferenceCategory;
    const-string v22, "safetylegal"

    const-string v23, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v5, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 158
    .local v4, act:Landroid/app/Activity;
    const-string v22, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 159
    .local v16, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v22, "team"

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 164
    const-string v22, "contributors"

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 167
    const-string v22, "storage"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 168
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    .line 169
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v20

    .line 171
    .local v20, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/16 v19, 0x0

    .line 172
    .local v19, storagePath:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_3

    .line 173
    aget-object v22, v20, v12

    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 174
    const-string v22, "mounted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 175
    aget-object v22, v20, v12

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v14

    .line 176
    .local v14, measurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    new-instance v18, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;

    aget-object v22, v20, v12

    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v22

    aget-object v23, v20, v12

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v23

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;ZZ)V

    .line 177
    .local v18, receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 179
    invoke-virtual {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 180
    invoke-virtual {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v14           #measurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    .end local v18           #receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 185
    :cond_3
    sget-boolean v22, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v22, :cond_4

    .line 186
    const-string v22, "user_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 187
    .local v17, preference:Landroid/preference/Preference;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    .end local v17           #preference:Landroid/preference/Preference;
    :cond_4
    const-string v22, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lmiui/preference/ValuePreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    .line 192
    new-instance v11, Lmiui/widget/HeiHeiGestureView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Lmiui/widget/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 193
    .local v11, hh:Lmiui/widget/HeiHeiGestureView;
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lmiui/widget/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    sget-object v22, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    sget-object v23, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    sget-object v24, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v11, v0, v1, v2}, Lmiui/widget/HeiHeiGestureView;->setResources([Ljava/lang/String;[I[D)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 197
    .local v7, decorView:Landroid/widget/FrameLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 198
    .local v6, child:Landroid/view/View;
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 199
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v6, v0}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;I)V

    .line 200
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 276
    const/4 v1, 0x1

    const v2, 0x7f0c02db

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 277
    .local v0, updateItem:Landroid/view/MenuItem;
    const v1, 0x7f02011f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 278
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 280
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 285
    const v1, 0x7f04008b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, rootView:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 444
    .local v1, storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    goto :goto_0

    .line 446
    .end local v1           #storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 447
    return-void
.end method

.method public onFling(FI)V
    .locals 2
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 671
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 328
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 321
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 325
    const/4 v1, 0x1

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 687
    const-string v0, "device_name"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/EditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    const-string v1, "edit_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 692
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 206
    const-string v1, "user_manual"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MIUI_LICENSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v3, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 215
    :cond_0
    const-string v1, "model_number"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 218
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mHits:[J

    aget-wide v0, v0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 210
    :cond_2
    const-string v1, "status_info"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->hasGeminiStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    const-string v2, "com.android.settings"

    const-string v3, "com.mediatek.gemini.GeminiStatus"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    .line 225
    const-string v1, "MiuiDeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_3
    const-string v1, "firmware_version"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v1, :cond_7

    .line 230
    iget v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    .line 231
    iget v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    if-nez v1, :cond_5

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    invoke-virtual {v1, v2, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c000c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 240
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 241
    :cond_5
    iget v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    .line 244
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0f

    iget v4, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 249
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 251
    :cond_7
    iget v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    if-gez v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_8

    .line 253
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 255
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 257
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/provider/ExtraSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 456
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 458
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    .line 463
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 464
    return-void

    .line 460
    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method public onScroll(IF)V
    .locals 1
    .parameter "state"
    .parameter "offset"

    .prologue
    .line 663
    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 666
    :cond_0
    return-void
.end method

.method public onScrollBegin()V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 296
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v1

    .line 297
    .local v1, actionBar:Lmiui/v5/app/MiuiActionBar;
    if-eqz v1, :cond_0

    .line 298
    const v3, 0x7f040003

    invoke-interface {v1, v3}, Lmiui/v5/app/MiuiActionBar;->setCustomView(I)V

    .line 299
    invoke-interface {v1}, Lmiui/v5/app/MiuiActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x60b00af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/MiuiDeviceInfoSettings$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings$1;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-interface {v1}, Lmiui/v5/app/MiuiActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mLogo:Landroid/widget/ImageView;

    .line 307
    iget-object v4, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mLogo:Landroid/widget/ImageView;

    sget-boolean v3, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v3, :cond_1

    const v3, 0x7f02016b

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    const v3, 0x60b009b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/view/ActionBarMovableLayout;

    .line 312
    .local v2, actionBarMovableLayout:Lmiui/v5/view/ActionBarMovableLayout;
    invoke-virtual {v2, p0}, Lmiui/v5/view/ActionBarMovableLayout;->setCallback(Lmiui/v5/view/ActionBarMovableLayout$Callback;)V

    .line 313
    invoke-virtual {v2, p0}, Lmiui/v5/view/ActionBarMovableLayout;->setOnScrollListener(Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;)V

    .line 315
    .end local v2           #actionBarMovableLayout:Lmiui/v5/view/ActionBarMovableLayout;
    :cond_0
    return-void

    .line 307
    :cond_1
    const v3, 0x7f02016a

    goto :goto_0
.end method
