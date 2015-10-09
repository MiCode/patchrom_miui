.class Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2165
    iput-object p1, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2169
    iget-object v0, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->showSoftInput()V
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2700(Landroid/widget/NumberPicker;)V

    .line 2170
    iget-object v0, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    # setter for: Landroid/widget/NumberPicker;->mIngonreMoveEvents:Z
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$2802(Landroid/widget/NumberPicker;Z)Z

    .line 2171
    return-void
.end method
