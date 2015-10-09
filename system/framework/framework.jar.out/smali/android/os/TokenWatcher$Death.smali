.class Landroid/os/TokenWatcher$Death;
.super Ljava/lang/Object;
.source "TokenWatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Death"
.end annotation


# instance fields
.field tag:Ljava/lang/String;

.field final synthetic this$0:Landroid/os/TokenWatcher;

.field token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 188
    iput-object p3, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    .line 194
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    # getter for: Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/TokenWatcher;->access$200(Landroid/os/TokenWatcher;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleaning up leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
