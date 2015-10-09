.class Landroid/net/http/IdleCache$IdleReaper;
.super Ljava/lang/Thread;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReaper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method private constructor <init>(Landroid/net/http/IdleCache;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/http/IdleCache;
    .param p2, "x1"    # Landroid/net/http/IdleCache$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "check":I
    const-string v1, "IdleReaper"

    invoke-virtual {p0, v1}, Landroid/net/http/IdleCache$IdleReaper;->setName(Ljava/lang/String;)V

    .line 150
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 152
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    monitor-enter v2

    .line 153
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    # getter for: Landroid/net/http/IdleCache;->mCount:I
    invoke-static {v1}, Landroid/net/http/IdleCache;->access$100(Landroid/net/http/IdleCache;)I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    # invokes: Landroid/net/http/IdleCache;->clearIdle()V
    invoke-static {v1}, Landroid/net/http/IdleCache;->access$200(Landroid/net/http/IdleCache;)V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 165
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v3, 0x0

    # setter for: Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;
    invoke-static {v1, v3}, Landroid/net/http/IdleCache;->access$302(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;

    .line 166
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    return-void

    .line 156
    :catch_0
    move-exception v1

    goto :goto_1
.end method
