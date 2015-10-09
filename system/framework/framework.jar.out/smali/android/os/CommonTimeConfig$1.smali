.class Landroid/os/CommonTimeConfig$1;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonTimeConfig;


# direct methods
.method constructor <init>(Landroid/os/CommonTimeConfig;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    # getter for: Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/os/CommonTimeConfig;->access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    # getter for: Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;
    invoke-static {v0}, Landroid/os/CommonTimeConfig;->access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    # getter for: Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;
    invoke-static {v0}, Landroid/os/CommonTimeConfig;->access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/CommonTimeConfig$OnServerDiedListener;->onServerDied()V

    .line 427
    :cond_0
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
