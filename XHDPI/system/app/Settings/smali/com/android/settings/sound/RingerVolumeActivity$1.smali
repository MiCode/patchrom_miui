.class Lcom/android/settings/sound/RingerVolumeActivity$1;
.super Landroid/os/Handler;
.source "RingerVolumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/RingerVolumeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$1;->this$0:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$1;->this$0:Lcom/android/settings/sound/RingerVolumeActivity;

    #calls: Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeActivity;->access$000(Lcom/android/settings/sound/RingerVolumeActivity;)V

    .line 96
    return-void
.end method
