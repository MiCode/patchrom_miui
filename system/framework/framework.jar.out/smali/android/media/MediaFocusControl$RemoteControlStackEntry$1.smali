.class Landroid/media/MediaFocusControl$RemoteControlStackEntry$1;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaFocusControl$RemoteControlStackEntry;-><init>(Landroid/media/MediaFocusControl;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl$RemoteControlStackEntry;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl$RemoteControlStackEntry;)V
    .locals 0

    .prologue
    .line 1264
    iput-object p1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry$1;->this$0:Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry$1;->this$0:Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mController:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry$1;->this$0:Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 1267
    return-void
.end method
