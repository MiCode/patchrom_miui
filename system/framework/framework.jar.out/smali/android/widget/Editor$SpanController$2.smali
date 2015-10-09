.class Landroid/widget/Editor$SpanController$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$EasyEditDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SpanController;)V
    .locals 0

    .prologue
    .line 1955
    iput-object p1, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick(Landroid/text/style/EasyEditSpan;)V
    .locals 5
    .param p1, "span"    # Landroid/text/style/EasyEditSpan;

    .prologue
    .line 1958
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 1959
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1960
    .local v2, "start":I
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1961
    .local v1, "end":I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    .line 1962
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    const/4 v4, 0x1

    # invokes: Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V
    invoke-static {v3, v4, p1}, Landroid/widget/Editor$SpanController;->access$1100(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V

    .line 1963
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 1965
    :cond_0
    invoke-interface {v0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1966
    return-void
.end method
