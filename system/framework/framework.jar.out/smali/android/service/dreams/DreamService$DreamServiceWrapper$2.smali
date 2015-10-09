.class Landroid/service/dreams/DreamService$DreamServiceWrapper$2;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->detach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # invokes: Landroid/service/dreams/DreamService;->detach()V
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$500(Landroid/service/dreams/DreamService;)V

    .line 766
    return-void
.end method
