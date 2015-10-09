.class Landroid/media/MediaFocusControl$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1033
    if-nez p2, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1037
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1040
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$2800(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method
