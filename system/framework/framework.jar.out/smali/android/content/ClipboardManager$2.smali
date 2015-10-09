.class Landroid/content/ClipboardManager$2;
.super Landroid/os/Handler;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Landroid/content/ClipboardManager$2;->this$0:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Landroid/content/ClipboardManager$2;->this$0:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->reportPrimaryClipChanged()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
