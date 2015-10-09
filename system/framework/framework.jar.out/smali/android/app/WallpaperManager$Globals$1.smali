.class Landroid/app/WallpaperManager$Globals$1;
.super Landroid/os/Handler;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager$Globals;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 227
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 232
    :pswitch_0
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    # setter for: Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 234
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    # setter for: Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 235
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
