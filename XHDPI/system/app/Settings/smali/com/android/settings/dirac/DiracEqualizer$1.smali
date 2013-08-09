.class Lcom/android/settings/dirac/DiracEqualizer$1;
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
    .line 164
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 168
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mConfigManager:Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;
    invoke-static {v0}, Lcom/android/settings/dirac/DiracEqualizer;->access$100(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #getter for: Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$000(Lcom/android/settings/dirac/DiracEqualizer;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->remove(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/dirac/DiracEqualizer;->mCurrentConfig:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    invoke-static {v0, v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$002(Lcom/android/settings/dirac/DiracEqualizer;Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 171
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    invoke-virtual {v0}, Lcom/android/settings/dirac/DiracEqualizer;->ensureCurrentConfig()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateSeekBars()V
    invoke-static {v0}, Lcom/android/settings/dirac/DiracEqualizer;->access$200(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateCurve()V
    invoke-static {v0}, Lcom/android/settings/dirac/DiracEqualizer;->access$300(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->updateSpinner()V
    invoke-static {v0}, Lcom/android/settings/dirac/DiracEqualizer;->access$400(Lcom/android/settings/dirac/DiracEqualizer;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$1;->this$0:Lcom/android/settings/dirac/DiracEqualizer;

    const v1, 0x7f0c08b5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    return-void
.end method
