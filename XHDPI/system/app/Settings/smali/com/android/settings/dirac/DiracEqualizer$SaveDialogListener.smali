.class Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;
.super Ljava/lang/Object;
.source "DiracEqualizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dirac/DiracEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveDialogListener"
.end annotation


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private mWatcher:Landroid/text/TextWatcher;

.field final synthetic this$0:Lcom/android/settings/dirac/DiracEqualizer;


# direct methods
.method public constructor <init>(Lcom/android/settings/dirac/DiracEqualizer;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter "editor"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->mEditText:Landroid/widget/EditText;

    .line 295
    return-void
.end method

.method private removeTextWatcher()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->mWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->removeTextWatcher()V

    .line 326
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 303
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;
    invoke-static {v2}, Lcom/android/settings/dirac/DiracEqualizer;->access$100(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    invoke-static {v3}, Lcom/android/settings/dirac/DiracEqualizer;->access$000(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->add(Ljava/lang/String;[F)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    .line 307
    .local v0, c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    invoke-static {v2}, Lcom/android/settings/dirac/DiracEqualizer;->access$000(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-virtual {v2, v0}, Lcom/android/settings/dirac/DiracEqualizer;->setCurrentConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateSpinner()V
    invoke-static {v2}, Lcom/android/settings/dirac/DiracEqualizer;->access$400(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 314
    .end local v0           #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->removeTextWatcher()V

    .line 315
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer$SaveDialogListener;->mWatcher:Landroid/text/TextWatcher;

    .line 299
    return-void
.end method
