.class Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
.super Ljava/lang/Object;
.source "CallbackFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/base/CallbackFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private mFilter:Landroid/filterfw/core/Filter;

.field private mFrame:Landroid/filterfw/core/Frame;

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mUserData:Ljava/lang/Object;

.field final synthetic this$0:Landroid/filterpacks/base/CallbackFilter;


# direct methods
.method public constructor <init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .locals 0
    .param p2, "listener"    # Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .param p3, "filter"    # Landroid/filterfw/core/Filter;
    .param p4, "frame"    # Landroid/filterfw/core/Frame;
    .param p5, "userData"    # Ljava/lang/Object;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->this$0:Landroid/filterpacks/base/CallbackFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 59
    iput-object p3, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFilter:Landroid/filterfw/core/Filter;

    .line 60
    iput-object p4, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    .line 61
    iput-object p5, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mUserData:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    iget-object v3, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mUserData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 67
    return-void
.end method
