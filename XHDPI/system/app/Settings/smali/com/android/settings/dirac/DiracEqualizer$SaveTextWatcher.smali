.class Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;
.super Ljava/lang/Object;
.source "DiracEqualizer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dirac/DiracEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTextWatcher"
.end annotation


# instance fields
.field private final mDialogConfirm:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/settings/dirac/DiracEqualizer;


# direct methods
.method public constructor <init>(Lcom/android/settings/dirac/DiracEqualizer;Landroid/app/AlertDialog;)V
    .locals 1
    .parameter
    .parameter "dialog"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;->mDialogConfirm:Landroid/widget/Button;

    .line 335
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 356
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 352
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;->mDialogConfirm:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;->mDialogConfirm:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;
    invoke-static {v2}, Lcom/android/settings/dirac/DiracEqualizer;->access$100(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->findByTitle(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 344
    .local v0, rename:Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveTextWatcher;->mDialogConfirm:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const v1, 0x7f0c08b8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .end local v0           #rename:Z
    :cond_1
    move v0, v1

    .line 343
    goto :goto_1

    .line 344
    .restart local v0       #rename:Z
    :cond_2
    const v1, 0x7f0c08b7

    goto :goto_2
.end method
