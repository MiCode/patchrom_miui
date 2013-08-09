.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;
.super Ljava/lang/Object;
.source "BandwidthUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    iput-object p2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 410
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 411
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 412
    .local v0, bytes:J
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    iget-object v2, v2, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    .line 413
    const-string v2, "BandwidthUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set Limit Bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    iget-object v2, v2, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 415
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    iget-object v2, v2, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    const/4 v3, 0x1

    #calls: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V

    .line 416
    return-void
.end method
