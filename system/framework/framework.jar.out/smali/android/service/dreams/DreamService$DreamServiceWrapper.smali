.class Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method private constructor <init>(Landroid/service/dreams/DreamService;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/dreams/DreamService;
    .param p2, "x1"    # Landroid/service/dreams/DreamService$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;)V

    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 754
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$400(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$400(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    return-void
.end method
