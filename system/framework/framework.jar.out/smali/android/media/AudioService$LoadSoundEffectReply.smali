.class Landroid/media/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadSoundEffectReply"
.end annotation


# instance fields
.field public mStatus:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 1

    .prologue
    .line 1761
    iput-object p1, p0, Landroid/media/AudioService$LoadSoundEffectReply;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method
