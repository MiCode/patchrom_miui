.class public interface abstract Landroid/os/PerformanceCollector$PerformanceResultsWriter;
.super Ljava/lang/Object;
.source "PerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerformanceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PerformanceResultsWriter"
.end annotation


# virtual methods
.method public abstract writeBeginSnapshot(Ljava/lang/String;)V
.end method

.method public abstract writeEndSnapshot(Landroid/os/Bundle;)V
.end method

.method public abstract writeMeasurement(Ljava/lang/String;F)V
.end method

.method public abstract writeMeasurement(Ljava/lang/String;J)V
.end method

.method public abstract writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract writeStartTiming(Ljava/lang/String;)V
.end method

.method public abstract writeStopTiming(Landroid/os/Bundle;)V
.end method
