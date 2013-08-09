.class public interface abstract Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataUsageChartListener"
.end annotation


# virtual methods
.method public abstract onInspectRangeChanged()V
.end method

.method public abstract onLimitChanged()V
.end method

.method public abstract onWarningChanged()V
.end method

.method public abstract requestLimitEdit()V
.end method

.method public abstract requestWarningEdit()V
.end method
