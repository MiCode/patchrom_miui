.class public interface abstract Lcom/android/settings/VirusScanService$OnVirusScanListener;
.super Ljava/lang/Object;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVirusScanListener"
.end annotation


# virtual methods
.method public abstract onItemScanFinished(IZ)V
.end method

.method public abstract onItemScanning(I)V
.end method

.method public abstract onItemUninstalled(I)V
.end method

.method public abstract onScanFinished()V
.end method

.method public abstract onScanForceStopped()V
.end method
