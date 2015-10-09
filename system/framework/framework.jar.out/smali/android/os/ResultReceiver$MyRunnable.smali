.class Landroid/os/ResultReceiver$MyRunnable;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunnable"
.end annotation


# instance fields
.field final mResultCode:I

.field final mResultData:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V
    .locals 0
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 37
    iput-object p1, p0, Landroid/os/ResultReceiver$MyRunnable;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultCode:I

    .line 39
    iput-object p3, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Landroid/os/ResultReceiver$MyRunnable;->this$0:Landroid/os/ResultReceiver;

    iget v1, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultCode:I

    iget-object v2, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 44
    return-void
.end method
