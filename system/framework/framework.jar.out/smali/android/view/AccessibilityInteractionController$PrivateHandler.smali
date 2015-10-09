.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final MSG_FIND_ACCESSIBLITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 941
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 942
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 943
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 947
    iget v0, p1, Landroid/os/Message;->what:I

    .line 948
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 962
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :pswitch_0
    const-string v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    .line 960
    :goto_0
    return-object v1

    .line 952
    :pswitch_1
    const-string v1, "MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    goto :goto_0

    .line 954
    :pswitch_2
    const-string v1, "MSG_FIND_ACCESSIBLITY_NODE_INFOS_BY_VIEW_ID"

    goto :goto_0

    .line 956
    :pswitch_3
    const-string v1, "MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_TEXT"

    goto :goto_0

    .line 958
    :pswitch_4
    const-string v1, "MSG_FIND_FOCUS"

    goto :goto_0

    .line 960
    :pswitch_5
    const-string v1, "MSG_FOCUS_SEARCH"

    goto :goto_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 968
    iget v0, p1, Landroid/os/Message;->what:I

    .line 969
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 989
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 971
    :pswitch_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 991
    :goto_0
    return-void

    .line 974
    :pswitch_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 977
    :pswitch_2
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 980
    :pswitch_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 983
    :pswitch_4
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 986
    :pswitch_5
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
