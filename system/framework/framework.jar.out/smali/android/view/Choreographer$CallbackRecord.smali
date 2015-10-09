.class final Landroid/view/Choreographer$CallbackRecord;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public action:Ljava/lang/Object;

.field public dueTime:J

.field public next:Landroid/view/Choreographer$CallbackRecord;

.field public token:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/Choreographer$1;

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/view/Choreographer$CallbackRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public run(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 758
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    # getter for: Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;
    invoke-static {}, Landroid/view/Choreographer;->access$400()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 759
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
