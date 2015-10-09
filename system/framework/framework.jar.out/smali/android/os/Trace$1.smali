.class final Landroid/os/Trace$1;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 99
    # invokes: Landroid/os/Trace;->cacheEnabledTags()J
    invoke-static {}, Landroid/os/Trace;->access$000()J

    .line 100
    return-void
.end method
