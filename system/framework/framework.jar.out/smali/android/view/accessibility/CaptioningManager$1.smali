.class Landroid/view/accessibility/CaptioningManager$1;
.super Landroid/database/ContentObserver;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "uriPath":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "name":Ljava/lang/String;
    const-string v2, "accessibility_captioning_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # invokes: Landroid/view/accessibility/CaptioningManager;->notifyEnabledChanged()V
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$000(Landroid/view/accessibility/CaptioningManager;)V

    .line 233
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v2, "accessibility_captioning_locale"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # invokes: Landroid/view/accessibility/CaptioningManager;->notifyLocaleChanged()V
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$100(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v2, "accessibility_captioning_font_scale"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # invokes: Landroid/view/accessibility/CaptioningManager;->notifyFontScaleChanged()V
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$200(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # getter for: Landroid/view/accessibility/CaptioningManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$400(Landroid/view/accessibility/CaptioningManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # getter for: Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # getter for: Landroid/view/accessibility/CaptioningManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$400(Landroid/view/accessibility/CaptioningManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$1;->this$0:Landroid/view/accessibility/CaptioningManager;

    # getter for: Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
