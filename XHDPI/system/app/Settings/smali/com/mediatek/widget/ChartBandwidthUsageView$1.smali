.class Lcom/mediatek/widget/ChartBandwidthUsageView$1;
.super Landroid/os/Handler;
.source "ChartBandwidthUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/widget/ChartSweepView;

    .line 80
    .local v0, sweep:Lcom/mediatek/widget/ChartSweepView;
    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v1, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/widget/ChartBandwidthUsageView;->sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$000(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;Z)V

    .line 84
    return-void
.end method
