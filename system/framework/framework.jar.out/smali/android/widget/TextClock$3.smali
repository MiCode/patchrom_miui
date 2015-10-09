.class Landroid/widget/TextClock$3;
.super Ljava/lang/Object;
.source "TextClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method constructor <init>(Landroid/widget/TextClock;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 157
    iget-object v4, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    # invokes: Landroid/widget/TextClock;->onTimeChanged()V
    invoke-static {v4}, Landroid/widget/TextClock;->access$100(Landroid/widget/TextClock;)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 160
    .local v2, "now":J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 162
    .local v0, "next":J
    iget-object v4, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    invoke-virtual {v4}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    # getter for: Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Landroid/widget/TextClock;->access$400(Landroid/widget/TextClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method
