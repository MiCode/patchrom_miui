.class Landroid/os/Binder$1;
.super Ljava/lang/Thread;
.source "Binder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/Binder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/Binder;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$fd:Ljava/io/FileDescriptor;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Landroid/os/Binder$1;->this$0:Landroid/os/Binder;

    iput-object p3, p0, Landroid/os/Binder$1;->val$fd:Ljava/io/FileDescriptor;

    iput-object p4, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    iput-object p5, p0, Landroid/os/Binder$1;->val$args:[Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/os/Binder$1;->this$0:Landroid/os/Binder;

    iget-object v1, p0, Landroid/os/Binder$1;->val$fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    iget-object v3, p0, Landroid/os/Binder$1;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 335
    return-void

    .line 333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v0
.end method
