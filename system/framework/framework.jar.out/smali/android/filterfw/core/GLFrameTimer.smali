.class Landroid/filterfw/core/GLFrameTimer;
.super Ljava/lang/Object;
.source "GLFrame.java"


# static fields
.field private static mTimer:Landroid/filterfw/core/StopWatchMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/filterfw/core/StopWatchMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    sput-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 39
    :cond_0
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-object v0
.end method
