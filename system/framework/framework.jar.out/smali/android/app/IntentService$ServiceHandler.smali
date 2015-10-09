.class final Landroid/app/IntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "IntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/IntentService;


# direct methods
.method public constructor <init>(Landroid/app/IntentService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/IntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/IntentService;->stopSelf(I)V

    .line 67
    return-void
.end method
