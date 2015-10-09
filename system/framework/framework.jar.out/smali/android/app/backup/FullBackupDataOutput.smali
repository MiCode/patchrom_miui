.class public Landroid/app/backup/FullBackupDataOutput;
.super Ljava/lang/Object;
.source "FullBackupDataOutput.java"


# instance fields
.field private mData:Landroid/app/backup/BackupDataOutput;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 17
    return-void
.end method


# virtual methods
.method public getData()Landroid/app/backup/BackupDataOutput;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    return-object v0
.end method
