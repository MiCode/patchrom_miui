.class Landroid/widget/AbsListView$InputConnectionWrapper;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputConnectionWrapper"
.end annotation


# instance fields
.field private final mOutAttrs:Landroid/view/inputmethod/EditorInfo;

.field private mTarget:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 5840
    iput-object p1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5841
    iput-object p2, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    .line 5842
    return-void
.end method

.method private getTarget()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 5845
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    .line 5846
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .line 5848
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 5957
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .prologue
    .line 5967
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 5937
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 5942
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 5932
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 5912
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 5962
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 5927
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    .prologue
    .line 5901
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    .line 5902
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 5907
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 5895
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 5896
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 5889
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 5890
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 5883
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 5884
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 5952
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 4
    .param p1, "editorAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 5862
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 5863
    iget-object v2, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5865
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 5866
    iget-object v2, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5868
    :cond_0
    const/4 v1, 0x1

    .line 5870
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 5972
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5855
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5878
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 5922
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 5917
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 5947
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
