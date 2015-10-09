.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 899
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x42

    if-ne v2, v3, :cond_2

    .line 900
    iget-object v2, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    # getter for: Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z
    invoke-static {v2}, Landroid/view/LayoutInflater$BlinkLayout;->access$000(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    iget-object v3, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    # getter for: Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z
    invoke-static {v3}, Landroid/view/LayoutInflater$BlinkLayout;->access$100(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    # setter for: Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z
    invoke-static {v2, v0}, Landroid/view/LayoutInflater$BlinkLayout;->access$102(Landroid/view/LayoutInflater$BlinkLayout;Z)Z

    .line 902
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    # invokes: Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V
    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->access$200(Landroid/view/LayoutInflater$BlinkLayout;)V

    .line 904
    :cond_1
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-virtual {v0}, Landroid/view/LayoutInflater$BlinkLayout;->invalidate()V

    .line 907
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
