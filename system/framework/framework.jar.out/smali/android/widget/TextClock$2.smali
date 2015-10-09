.class Landroid/widget/TextClock$2;
.super Landroid/content/BroadcastReceiver;
.source "TextClock.java"


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
    .line 144
    iput-object p1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    # getter for: Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TextClock;->access$200(Landroid/widget/TextClock;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    # invokes: Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/widget/TextClock;->access$300(Landroid/widget/TextClock;Ljava/lang/String;)V

    .line 151
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    # invokes: Landroid/widget/TextClock;->onTimeChanged()V
    invoke-static {v1}, Landroid/widget/TextClock;->access$100(Landroid/widget/TextClock;)V

    .line 152
    return-void
.end method
