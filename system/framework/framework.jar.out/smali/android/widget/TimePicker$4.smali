.class Landroid/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 219
    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;Z)Z

    .line 220
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 221
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    .line 222
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
