.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesImpl"

.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mDiskWritesInFlight:I

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mStatSize:J

.field private mStatTimestamp:J

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 66
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 76
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 77
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 78
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 79
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 81
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/app/SharedPreferencesImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDiskLocked()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/SharedPreferencesImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$308(Landroid/app/SharedPreferencesImpl;)I
    .locals 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$310(Landroid/app/SharedPreferencesImpl;)I
    .locals 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 205
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_1

    .line 207
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, -0x1

    .line 541
    const/4 v3, 0x0

    .line 543
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .local v4, "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :goto_0
    move-object v5, v3

    .line 560
    :goto_1
    return-object v5

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 546
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_0

    .line 547
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v5, 0x0

    goto :goto_1

    .line 550
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 555
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .restart local v4    # "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 558
    .end local v4    # "str":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 556
    :catch_1
    move-exception v1

    .line 557
    .local v1, "e2":Ljava/io/FileNotFoundException;
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 508
    new-instance v2, Landroid/app/SharedPreferencesImpl$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 522
    .local v2, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_0

    move v0, v3

    .line 526
    .local v0, "isFromSyncCommit":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, "wasEmpty":Z
    monitor-enter p0

    .line 529
    :try_start_0
    iget v5, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 530
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    if-eqz v1, :cond_2

    .line 532
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 538
    .end local v1    # "wasEmpty":Z
    :goto_2
    return-void

    .end local v0    # "isFromSyncCommit":Z
    :cond_0
    move v0, v4

    .line 522
    goto :goto_0

    .restart local v0    # "isFromSyncCommit":Z
    .restart local v1    # "wasEmpty":Z
    :cond_1
    move v1, v4

    .line 529
    goto :goto_1

    .line 530
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 537
    .end local v1    # "wasEmpty":Z
    :cond_2
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private hasFileChangedUnexpectedly()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget v4, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-lez v4, :cond_0

    .line 165
    monitor-exit p0

    .line 182
    :goto_0
    return v2

    .line 167
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 176
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 181
    .local v1, "stat":Llibcore/io/StructStat;
    monitor-enter p0

    .line 182
    :try_start_2
    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    iget-wide v6, v1, Llibcore/io/StructStat;->st_mtime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Llibcore/io/StructStat;->st_size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 167
    .end local v1    # "stat":Llibcore/io/StructStat;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 177
    :catch_0
    move-exception v0

    .local v0, "e":Llibcore/io/ErrnoException;
    move v2, v3

    .line 178
    goto :goto_0
.end method

.method private loadFromDiskLocked()V
    .locals 8

    .prologue
    .line 98
    iget-boolean v5, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v5, :cond_0

    .line 142
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 103
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 107
    :cond_1
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 108
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to read preferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    const/4 v1, 0x0

    .line 112
    .local v1, "map":Ljava/util/Map;
    const/4 v2, 0x0

    .line 114
    .local v2, "stat":Llibcore/io/StructStat;
    :try_start_0
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v2

    .line 115
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    const/4 v3, 0x0

    .line 118
    .local v3, "str":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .local v4, "str":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 128
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 134
    if-eqz v1, :cond_4

    .line 135
    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 136
    iget-wide v5, v2, Llibcore/io/StructStat;->st_mtime:J

    iput-wide v5, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    .line 137
    iget-wide v5, v2, Llibcore/io/StructStat;->st_size:J

    iput-wide v5, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 141
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0

    .line 121
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_4
    const-string v5, "SharedPreferencesImpl"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    :try_start_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 131
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 123
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v5, "SharedPreferencesImpl"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 128
    :try_start_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Llibcore/io/ErrnoException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 125
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v5, "SharedPreferencesImpl"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 128
    :try_start_9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_9
    .catch Llibcore/io/ErrnoException; {:try_start_9 .. :try_end_9} :catch_1

    .line 139
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    goto :goto_2

    .line 128
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 125
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 123
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 121
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startLoadFromDisk()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    const-string v1, "SharedPreferencesImpl-load"

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    .line 95
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 7
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 566
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    iget-boolean v3, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    if-nez v3, :cond_0

    .line 572
    invoke-virtual {p1, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 625
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 576
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 577
    const-string v3, "SharedPreferencesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p1, v6}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 591
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 592
    .local v2, "str":Ljava/io/FileOutputStream;
    if-nez v2, :cond_4

    .line 593
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 613
    .end local v2    # "str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 620
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 621
    const-string v3, "SharedPreferencesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t clean up partially-written file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_3
    invoke-virtual {p1, v6}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto/16 :goto_0

    .line 596
    .restart local v2    # "str":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_1
    iget-object v3, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 597
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 598
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 599
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 601
    :try_start_2
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    .line 602
    .local v1, "stat":Llibcore/io/StructStat;
    monitor-enter p0
    :try_end_2
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 603
    :try_start_3
    iget-wide v3, v1, Llibcore/io/StructStat;->st_mtime:J

    iput-wide v3, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    .line 604
    iget-wide v3, v1, Llibcore/io/StructStat;->st_size:J

    iput-wide v3, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 605
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    .end local v1    # "stat":Llibcore/io/StructStat;
    :goto_2
    :try_start_4
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 611
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 615
    .end local v2    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 616
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 605
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stat":Llibcore/io/StructStat;
    .restart local v2    # "str":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Llibcore/io/ErrnoException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 606
    .end local v1    # "stat":Llibcore/io/StructStat;
    :catch_2
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 269
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 283
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 217
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 261
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 262
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_0
    monitor-exit p0

    return p2

    .line 263
    .end local v0    # "v":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 254
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 255
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2    # "defValue":F
    :cond_0
    monitor-exit p0

    return p2

    .line 256
    .end local v0    # "v":Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 240
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 241
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    monitor-exit p0

    return p2

    .line 242
    .end local v0    # "v":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 247
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 248
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    monitor-exit p0

    return-wide p2

    .line 249
    .end local v0    # "v":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 224
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 226
    .end local v0    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 231
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 232
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 233
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 234
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit p0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startReloadIfChangedUnexpectedly()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    monitor-exit p0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 155
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
