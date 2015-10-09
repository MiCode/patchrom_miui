.class Landroid/content/ClipboardManager$1;
.super Landroid/content/IOnPrimaryClipChangedListener$Stub;
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
    .line 63
    iput-object p1, p0, Landroid/content/ClipboardManager$1;->this$0:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Landroid/content/IOnPrimaryClipChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPrimaryClipChanged()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/content/ClipboardManager$1;->this$0:Landroid/content/ClipboardManager;

    # getter for: Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/content/ClipboardManager;->access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method
