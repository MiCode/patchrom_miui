.class Landroid/service/dreams/DreamService$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 661
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/dreams/DreamService;->access$100(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Crashed in onDreamingStarted()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    # invokes: Landroid/service/dreams/DreamService;->safelyFinish()V
    invoke-static {v1}, Landroid/service/dreams/DreamService;->access$200(Landroid/service/dreams/DreamService;)V

    goto :goto_0
.end method
