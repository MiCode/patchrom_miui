.class public Landroid/widget/ZoomButton;
.super Landroid/widget/ImageButton;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsInLongpress:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private mZoomSpeed:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/widget/ZoomButton$1;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButton$1;-><init>(Landroid/widget/ZoomButton;)V

    iput-object v0, p0, Landroid/widget/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    .line 41
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/ZoomButton;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-virtual {p0, p0}, Landroid/widget/ZoomButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ZoomButton;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ZoomButton;

    .prologue
    .line 29
    iget-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ZoomButton;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/ZoomButton;

    .prologue
    .line 29
    iget-wide v0, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/widget/ZoomButton;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ZoomButton;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/ZoomButton;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/ZoomButton;->clearFocus()V

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 105
    const-class v0, Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 111
    const-class v0, Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 72
    iput-boolean v2, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    .line 73
    iget-object v0, p0, Landroid/widget/ZoomButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ZoomButton;->mIsInLongpress:Z

    .line 64
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ZoomButton;->setPressed(Z)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 94
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 0
    .param p1, "speed"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Landroid/widget/ZoomButton;->mZoomSpeed:J

    .line 69
    return-void
.end method
