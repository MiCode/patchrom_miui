.class Lcom/mediatek/gemini/GeminiEditPinPreference$1;
.super Ljava/lang/Object;
.source "GeminiEditPinPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiEditPinPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiEditPinPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiEditPinPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiEditPinPreference$1;->this$0:Lcom/mediatek/gemini/GeminiEditPinPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, -0x1

    .line 81
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference$1;->this$0:Lcom/mediatek/gemini/GeminiEditPinPreference;

    #getter for: Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->access$000(Lcom/mediatek/gemini/GeminiEditPinPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference$1;->this$0:Lcom/mediatek/gemini/GeminiEditPinPreference;

    #getter for: Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->access$000(Lcom/mediatek/gemini/GeminiEditPinPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference$1;->this$0:Lcom/mediatek/gemini/GeminiEditPinPreference;

    #getter for: Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->access$000(Lcom/mediatek/gemini/GeminiEditPinPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 100
    return-void
.end method
