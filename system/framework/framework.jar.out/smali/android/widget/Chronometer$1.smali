.class Landroid/widget/Chronometer$1;
.super Landroid/os/Handler;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Chronometer;


# direct methods
.method constructor <init>(Landroid/widget/Chronometer;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 269
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    # getter for: Landroid/widget/Chronometer;->mRunning:Z
    invoke-static {v0}, Landroid/widget/Chronometer;->access$000(Landroid/widget/Chronometer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # invokes: Landroid/widget/Chronometer;->updateText(J)V
    invoke-static {v0, v1, v2}, Landroid/widget/Chronometer;->access$100(Landroid/widget/Chronometer;J)V

    .line 271
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 272
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Chronometer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    :cond_0
    return-void
.end method
