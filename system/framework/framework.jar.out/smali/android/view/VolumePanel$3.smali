.class Landroid/view/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 299
    iget-object v0, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    const/4 v1, -0x1

    # setter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$402(Landroid/view/VolumePanel;I)I

    .line 300
    iget-object v0, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 301
    return-void
.end method
