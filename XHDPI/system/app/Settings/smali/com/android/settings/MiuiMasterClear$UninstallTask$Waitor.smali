.class Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear$UninstallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Waitor"
.end annotation


# instance fields
.field private mWaitInterval:I

.field final synthetic this$1:Lcom/android/settings/MiuiMasterClear$UninstallTask;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;I)V
    .locals 0
    .parameter
    .parameter "interval"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->this$1:Lcom/android/settings/MiuiMasterClear$UninstallTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p2, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->mWaitInterval:I

    .line 350
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitInterval()V
    .locals 2

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->mWaitInterval:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method
