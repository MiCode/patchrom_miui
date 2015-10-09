.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final FLAG_DEFERRED:I = 0x2

.field public static final FLAG_DELIVER_POST_IME:I = 0x1

.field public static final FLAG_FINISHED:I = 0x4

.field public static final FLAG_FINISHED_HANDLED:I = 0x8

.field public static final FLAG_RESYNTHESIZED:I = 0x10


# instance fields
.field public mEvent:Landroid/view/InputEvent;

.field public mFlags:I

.field public mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewRootImpl$1;

    .prologue
    .line 5446
    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipIme()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5460
    iget v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 5463
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
