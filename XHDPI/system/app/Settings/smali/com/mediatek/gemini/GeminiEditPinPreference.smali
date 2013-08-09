.class Lcom/mediatek/gemini/GeminiEditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "GeminiEditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mPinListener:Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiEditPinPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 108
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 70
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 76
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 77
    const-string v1, "EditTextPreference"

    const-string v2, "add deal with orientation change"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Lcom/mediatek/gemini/GeminiEditPinPreference$1;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/GeminiEditPinPreference$1;-><init>(Lcom/mediatek/gemini/GeminiEditPinPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mPinListener:Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mPinListener:Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/mediatek/gemini/GeminiEditPinPreference;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mPinListener:Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;

    .line 62
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, -0x1

    .line 129
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 131
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 132
    const-string v3, "EditTextPreference"

    const-string v4, "showDialog"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    iput-object v0, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 134
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    const v4, 0x1020003

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 136
    .local v1, editText:Landroid/widget/EditText;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 138
    .local v2, length:I
    const-string v3, "EditTextPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length of text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v2           #length:I
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v1       #editText:Landroid/widget/EditText;
    .restart local v2       #length:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiEditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showPinDialog()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 121
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiEditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 124
    :cond_1
    return-void
.end method
