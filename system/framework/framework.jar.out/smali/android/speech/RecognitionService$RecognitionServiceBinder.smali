.class Landroid/speech/RecognitionService$RecognitionServiceBinder;
.super Landroid/speech/IRecognitionService$Stub;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecognitionServiceBinder"
.end annotation


# instance fields
.field private mInternalService:Landroid/speech/RecognitionService;


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService;)V
    .locals 0
    .param p1, "service"    # Landroid/speech/RecognitionService;

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    .line 311
    iput-object p1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    .line 312
    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 333
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # invokes: Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z
    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    :cond_0
    return-void
.end method

.method public clearReference()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    .line 341
    return-void
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .locals 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 316
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # invokes: Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z
    invoke-static {v0, p2}, Landroid/speech/RecognitionService;->access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Landroid/speech/RecognitionService$StartListeningArgs;

    iget-object v4, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, p1, p2}, Landroid/speech/RecognitionService$StartListeningArgs;-><init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    :cond_0
    return-void
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 325
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # invokes: Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z
    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mInternalService:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    :cond_0
    return-void
.end method
