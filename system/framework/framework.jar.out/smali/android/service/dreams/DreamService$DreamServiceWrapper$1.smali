.class Landroid/service/dreams/DreamService$DreamServiceWrapper$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->attach(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field final synthetic val$windowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$windowToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$windowToken:Landroid/os/IBinder;

    # invokes: Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;)V
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$300(Landroid/service/dreams/DreamService;Landroid/os/IBinder;)V

    .line 758
    return-void
.end method
