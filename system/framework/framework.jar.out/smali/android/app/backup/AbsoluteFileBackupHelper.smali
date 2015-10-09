.class public Landroid/app/backup/AbsoluteFileBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "AbsoluteFileBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsoluteFileBackupHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/AbsoluteFileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/AbsoluteFileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/AbsoluteFileBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    .line 73
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
