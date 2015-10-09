.class Landroid/media/AudioManager$FocusEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 2

    .prologue
    .line 1930
    iput-object p1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1932
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 1933
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1936
    :cond_0
    if-eqz v0, :cond_1

    .line 1938
    new-instance v1, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$FocusEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 1953
    :goto_0
    return-void

    .line 1951
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
