.class public Lcom/android/settings/BugreportGenerator;
.super Landroid/content/BroadcastReceiver;
.source "BugreportGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_logFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/settings/BugreportGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BugreportGenerator;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/BugreportGenerator;->dumpBugreport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BugreportGenerator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BugreportGenerator;->m_logFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/BugreportGenerator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private asyncExecute(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 150
    move-object v0, p1

    .line 151
    .local v0, _r:Ljava/lang/Runnable;
    new-instance v1, Lcom/android/settings/BugreportGenerator$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/BugreportGenerator$2;-><init>(Lcom/android/settings/BugreportGenerator;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/settings/BugreportGenerator$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    return-void
.end method

.method private dumpBugreport(Ljava/lang/String;)V
    .locals 17
    .parameter "fileName"

    .prologue
    .line 70
    new-instance v9, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIInternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "debug_log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v9, tempDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 73
    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v9, v13, v14, v15}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 76
    :cond_0
    sget-object v13, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    const-string v14, "dumpBugreport"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v13, "echo 0 > /proc/sys/kernel/dmesg_restrict"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lmiui/os/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, tempPath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v10, tempFile:Ljava/io/File;
    sget-object v13, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    const-string v14, "Generating bugreport ..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dumpstate > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lmiui/os/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 86
    const/high16 v1, 0x8

    .line 87
    .local v1, BUFF_SIZE:I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 89
    .local v6, in:Ljava/io/BufferedInputStream;
    const/high16 v13, 0x8

    new-array v2, v13, [B

    .line 91
    .local v2, buffer:[B
    :try_start_0
    new-instance v12, Ljava/util/zip/ZipOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v15, 0x8

    invoke-direct {v13, v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    .local v12, zipout:Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v13, Ljava/util/zip/ZipEntry;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bugreport_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".log"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 96
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v14, 0x8

    invoke-direct {v7, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 98
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .local v7, in:Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v7, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .local v8, length:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_4

    .line 99
    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 101
    .end local v8           #length:I
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 102
    .end local v7           #in:Ljava/io/BufferedInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_3
    sget-object v13, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    const-string v14, "IOException"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    if-eqz v6, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 107
    :cond_1
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 108
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 110
    .end local v4           #e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 118
    .end local v12           #zipout:Ljava/util/zip/ZipOutputStream;
    :goto_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 121
    const-string v13, "echo 1 > /proc/sys/kernel/dmesg_restrict"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lmiui/os/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 123
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 131
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "MIUI"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "debug_log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lmiui/os/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 139
    :cond_2
    new-instance v5, Ljava/io/File;

    .end local v5           #file:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    .end local v3           #dir:Ljava/io/File;
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/BugreportGenerator;->m_logFileName:Ljava/lang/String;

    .line 146
    sget-object v13, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bugreport complete, file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/BugreportGenerator;->m_logFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 104
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    .restart local v8       #length:I
    .restart local v12       #zipout:Ljava/util/zip/ZipOutputStream;
    :cond_4
    if-eqz v7, :cond_5

    .line 105
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 107
    :cond_5
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 108
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v6, v7

    .line 109
    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 104
    .end local v8           #length:I
    :catchall_0
    move-exception v13

    :goto_4
    if-eqz v6, :cond_6

    .line 105
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 107
    :cond_6
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 108
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw v13
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 111
    .end local v12           #zipout:Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v4

    .line 112
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_5
    sget-object v13, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    const-string v14, "FileNotFoundException"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 113
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 114
    .local v4, e:Ljava/io/IOException;
    :goto_6
    sget-object v13, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    const-string v14, "IOException"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 113
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    .restart local v8       #length:I
    .restart local v12       #zipout:Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v4

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 111
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 104
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .end local v8           #length:I
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 101
    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method

.method private static getLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "preffix"

    .prologue
    .line 63
    move-object v1, p0

    .line 64
    .local v1, ret:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMdd-HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, dataFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    return-object v1
.end method

.method public static notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, intent_mount:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    .end local v1           #intent_mount:Landroid/content/Intent;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/BugreportGenerator;->scanFolder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static scanFolder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    .line 185
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, array:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 188
    aget-object v1, v0, v3

    .line 189
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/BugreportGenerator;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/BugreportGenerator;->scanFolder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v1           #f:Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "284"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/android/settings/BugreportGenerator;->TAG:Ljava/lang/String;

    const-string v2, "BUGREPORT_MAGIC_NUMBER -->"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bugreport"

    invoke-static {v2}, Lcom/android/settings/BugreportGenerator;->getLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, fileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;

    const v3, 0x7f0c092d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    new-instance v1, Lcom/android/settings/BugreportGenerator$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/BugreportGenerator$1;-><init>(Lcom/android/settings/BugreportGenerator;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/settings/BugreportGenerator;->asyncExecute(Ljava/lang/Runnable;)V

    .line 60
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    return-void
.end method
