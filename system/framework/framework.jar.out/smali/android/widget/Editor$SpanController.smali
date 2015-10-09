.class Landroid/widget/Editor$SpanController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 1919
    iput-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$SpanController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/text/style/EasyEditSpan;

    .prologue
    .line 1919
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    return-void
.end method

.method private isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;

    .prologue
    .line 1930
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq v0, p2, :cond_0

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne v0, p2, :cond_1

    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V
    .locals 5
    .param p1, "textChangedType"    # I
    .param p2, "span"    # Landroid/text/style/EasyEditSpan;

    .prologue
    .line 2021
    :try_start_0
    invoke-virtual {p2}, Landroid/text/style/EasyEditSpan;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 2022
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 2023
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2024
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2025
    iget-object v3, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 2027
    :catch_0
    move-exception v0

    .line 2029
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "Editor"

    const-string v4, "PendingIntent for notification cannot be sent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->hide()V

    .line 2015
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2017
    :cond_0
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1936
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->sendUpdateSelection()V
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)V

    .line 1989
    .end local p2    # "span":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1938
    .restart local p2    # "span":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-nez v0, :cond_2

    .line 1940
    new-instance v0, Landroid/widget/Editor$EasyEditPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 1941
    new-instance v0, Landroid/widget/Editor$SpanController$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SpanController$1;-><init>(Landroid/widget/Editor$SpanController;)V

    iput-object v0, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 1950
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    # getter for: Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1000(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1951
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    # getter for: Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1000(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    .line 1954
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    check-cast p2, Landroid/text/style/EasyEditSpan;

    .end local p2    # "span":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/widget/Editor$EasyEditPopupWindow;->setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V

    .line 1955
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    new-instance v1, Landroid/widget/Editor$SpanController$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController$2;-><init>(Landroid/widget/Editor$SpanController;)V

    # invokes: Landroid/widget/Editor$EasyEditPopupWindow;->setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V
    invoke-static {v0, v1}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1200(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V

    .line 1969
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1985
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->show()V

    .line 1986
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1987
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 2
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "previousStart"    # I
    .param p4, "previousEnd"    # I
    .param p5, "newStart"    # I
    .param p6, "newEnd"    # I

    .prologue
    .line 2003
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2004
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->sendUpdateSelection()V
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)V

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v1, :cond_0

    instance-of v1, p2, Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 2006
    check-cast v0, Landroid/text/style/EasyEditSpan;

    .line 2007
    .local v0, "easyEditSpan":Landroid/text/style/EasyEditSpan;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    .line 2008
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1993
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1994
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->sendUpdateSelection()V
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)V

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    # getter for: Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1000(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 1996
    invoke-virtual {p0}, Landroid/widget/Editor$SpanController;->hide()V

    goto :goto_0
.end method
