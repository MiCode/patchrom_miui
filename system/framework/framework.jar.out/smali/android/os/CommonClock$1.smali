.class Landroid/os/CommonClock$1;
.super Ljava/lang/Object;
.source "CommonClock.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method constructor <init>(Landroid/os/CommonClock;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    # getter for: Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/os/CommonClock;->access$000(Landroid/os/CommonClock;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    # getter for: Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;
    invoke-static {v0}, Landroid/os/CommonClock;->access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    # getter for: Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;
    invoke-static {v0}, Landroid/os/CommonClock;->access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/CommonClock$OnServerDiedListener;->onServerDied()V

    .line 319
    :cond_0
    monitor-exit v1

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
