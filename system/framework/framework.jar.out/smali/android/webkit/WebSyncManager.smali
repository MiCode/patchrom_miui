.class abstract Landroid/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSyncManager$1;,
        Landroid/webkit/WebSyncManager$SyncHandler;
    }
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "websync"

.field private static SYNC_LATER_INTERVAL:I = 0x0

.field private static final SYNC_MESSAGE:I = 0x65

.field private static SYNC_NOW_INTERVAL:I


# instance fields
.field protected mDataBase:Landroid/webkit/WebViewDatabase;

.field protected mHandler:Landroid/os/Handler;

.field private mStartSyncRefCount:I

.field private mSyncThread:Ljava/lang/Thread;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x64

    sput v0, Landroid/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    .line 32
    const v0, 0x493e0

    sput v0, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p2}, Landroid/webkit/WebSyncManager;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 26
    sget v0, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSyncInit()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public resetSync()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 114
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 81
    new-instance v1, Landroid/webkit/WebSyncManager$SyncHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebSyncManager$SyncHandler;-><init>(Landroid/webkit/WebSyncManager;Landroid/webkit/WebSyncManager$1;)V

    iput-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Landroid/webkit/WebSyncManager;->onSyncInit()V

    .line 84
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 86
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 90
    return-void
.end method

.method public startSync()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopSync()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget v0, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebSyncManager;->mStartSyncRefCount:I

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public sync()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 99
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method abstract syncFromRamToFlash()V
.end method
