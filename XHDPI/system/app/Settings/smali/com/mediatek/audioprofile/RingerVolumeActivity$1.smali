.class Lcom/mediatek/audioprofile/RingerVolumeActivity$1;
.super Landroid/os/Handler;
.source "RingerVolumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$1;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$1;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #calls: Lcom/mediatek/audioprofile/RingerVolumeActivity;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$000(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V

    .line 99
    return-void
.end method
