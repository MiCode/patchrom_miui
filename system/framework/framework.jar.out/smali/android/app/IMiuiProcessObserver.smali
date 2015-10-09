.class public abstract Landroid/app/IMiuiProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "IMiuiProcessObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onForegroundActivitiesChanged(IIZ)V
.end method

.method public abstract onImportanceChanged(III)V
.end method

.method public abstract onProcessDied(II)V
.end method

.method public abstract onProcessStateChanged(III)V
.end method
