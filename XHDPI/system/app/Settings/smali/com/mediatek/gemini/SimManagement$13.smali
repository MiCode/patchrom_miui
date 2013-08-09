.class Lcom/mediatek/gemini/SimManagement$13;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->buildChangeDataConnDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$13;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1713
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement$13;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement$13;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I
    invoke-static {v3}, Lcom/mediatek/gemini/SimManagement;->access$2600(Lcom/mediatek/gemini/SimManagement;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    #calls: Lcom/mediatek/gemini/SimManagement;->getSimIdBySlot(I)J
    invoke-static {v2, v3}, Lcom/mediatek/gemini/SimManagement;->access$2700(Lcom/mediatek/gemini/SimManagement;I)J

    move-result-wide v0

    .line 1714
    .local v0, simId:J
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement$13;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v3, -0x1

    #setter for: Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I
    invoke-static {v2, v3}, Lcom/mediatek/gemini/SimManagement;->access$2602(Lcom/mediatek/gemini/SimManagement;I)I

    .line 1715
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement$13;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-virtual {v2}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_backup_sim_setting"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1719
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement$13;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V
    invoke-static {v2, v0, v1}, Lcom/mediatek/gemini/SimManagement;->access$2300(Lcom/mediatek/gemini/SimManagement;J)V

    .line 1720
    return-void
.end method
