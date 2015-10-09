.class final Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WallpaperInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 233
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 234
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 235
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, "handled":Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 244
    .local v1, "dup":Landroid/view/MotionEvent;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    # invokes: Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V
    invoke-static {v3, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const/4 v2, 0x1

    .line 248
    .end local v1    # "dup":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
