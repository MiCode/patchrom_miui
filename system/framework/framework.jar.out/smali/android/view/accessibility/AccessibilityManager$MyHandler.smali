.class Landroid/view/accessibility/AccessibilityManager$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 141
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    const-string v0, "AccessibilityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/view/accessibility/AccessibilityManager;->setState(I)V
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->access$000(Landroid/view/accessibility/AccessibilityManager;I)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
