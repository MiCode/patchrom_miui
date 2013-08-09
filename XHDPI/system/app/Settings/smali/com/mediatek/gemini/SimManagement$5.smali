.class Lcom/mediatek/gemini/SimManagement$5;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;

.field final synthetic val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

.field final synthetic val$siminfo:Landroid/provider/Telephony$SIMInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;Landroid/provider/Telephony$SIMInfo;Lcom/mediatek/gemini/SimInfoEnablePreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    iput-object p2, p0, Lcom/mediatek/gemini/SimManagement$5;->val$siminfo:Landroid/provider/Telephony$SIMInfo;

    iput-object p3, p0, Lcom/mediatek/gemini/SimManagement$5;->val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v0, 0x1

    .line 623
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement$5;->val$siminfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch is clicking! with isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z
    invoke-static {v1}, Lcom/mediatek/gemini/SimManagement;->access$1800(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start to turn radio in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    #setter for: Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z
    invoke-static {v1, v0}, Lcom/mediatek/gemini/SimManagement;->access$1802(Lcom/mediatek/gemini/SimManagement;Z)Z

    .line 637
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$5;->val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-virtual {v0, p2}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheck(Z)V

    .line 638
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$5;->val$siminfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    #calls: Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V
    invoke-static {v0, v1, p2}, Lcom/mediatek/gemini/SimManagement;->access$1900(Lcom/mediatek/gemini/SimManagement;IZ)V

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    const-string v1, "SimManagementSettings"

    const-string v2, "Click too fast it is switching and set the switch to previous state"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$5;->val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheck(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
