.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xbb8

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 47
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 48
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 51
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 52
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 53
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 71
    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput v2, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    .line 215
    new-instance v0, Landroid/widget/ViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v4, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 48
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 50
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 51
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 52
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 53
    iput-boolean v3, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 71
    new-instance v1, Landroid/widget/ViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput v3, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    .line 215
    new-instance v1, Landroid/widget/ViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    .line 62
    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 66
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method static synthetic access$002(Landroid/widget/ViewFlipper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/ViewFlipper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ViewFlipper;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ViewFlipper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ViewFlipper;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 41
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method private updateRunning()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 162
    return-void
.end method

.method private updateRunning(Z)V
    .locals 5
    .param p1, "flipNow"    # Z

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-boolean v3, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    if-eqz v3, :cond_1

    move v1, v2

    .line 174
    .local v1, "running":Z
    :goto_0
    iget-boolean v3, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v1, v3, :cond_0

    .line 175
    if-eqz v1, :cond_2

    .line 176
    iget v3, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v3, p1}, Landroid/widget/ViewFlipper;->showOnly(IZ)V

    .line 177
    iget-object v3, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 188
    :cond_0
    return-void

    .line 173
    .end local v1    # "running":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    .restart local v1    # "running":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public isAutoStart()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 106
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 108
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 147
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 153
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 114
    invoke-direct {p0, v1}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 115
    return-void

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 203
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .param p1, "milliseconds"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 125
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 126
    return-void
.end method

.method public startFlipping()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 133
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 134
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 141
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 142
    return-void
.end method
