.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;
.super Ljava/lang/Object;
.source "BandwidthUsage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 217
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #calls: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$300(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 218
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    invoke-virtual {v0, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 219
    invoke-virtual {v0, v3, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 220
    invoke-virtual {v0, v2, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 221
    invoke-virtual {v0, v3, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 223
    return-void
.end method
