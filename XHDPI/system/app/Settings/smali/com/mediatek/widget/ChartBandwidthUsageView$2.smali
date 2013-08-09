.class Lcom/mediatek/widget/ChartBandwidthUsageView$2;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/mediatek/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
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
    .line 114
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 118
    if-eqz p2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #calls: Lcom/mediatek/widget/ChartBandwidthUsageView;->clearUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$100(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$200(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->onLimitChanged()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/widget/ChartBandwidthUsageView;->sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$000(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;Z)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->onLimitChanging()V

    goto :goto_0
.end method

.method public requestEdit(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$200(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    #getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->requestLimitEdit()V

    .line 135
    :cond_0
    return-void
.end method
