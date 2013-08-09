.class Lcom/android/settings/dirac/DiracEqualizer$2;
.super Ljava/lang/Object;
.source "DiracEqualizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dirac/DiracEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dirac/DiracEqualizer;


# direct methods
.method constructor <init>(Lcom/android/settings/dirac/DiracEqualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 264
    const/4 v1, -0x2

    if-eq p2, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$100(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->get(I)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    .line 266
    .local v0, config:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$000(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-virtual {v1, v0}, Lcom/android/settings/dirac/DiracEqualizer;->applyEQConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-virtual {v1, v0}, Lcom/android/settings/dirac/DiracEqualizer;->setCurrentConfig(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateCurve()V
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$300(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateSeekBars()V
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$200(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$2;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateSpinner()V
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$400(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 275
    .end local v0           #config:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 276
    return-void
.end method
