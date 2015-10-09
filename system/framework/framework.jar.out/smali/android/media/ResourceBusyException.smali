.class public final Landroid/media/ResourceBusyException;
.super Landroid/media/MediaDrmException;
.source "ResourceBusyException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
