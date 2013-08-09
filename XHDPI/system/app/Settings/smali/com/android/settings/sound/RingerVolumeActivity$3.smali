.class Lcom/android/settings/sound/RingerVolumeActivity$3;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/RingerVolumeActivity;->restoreAllVolumes()V
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
    .line 178
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$3;->this$0:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$3;->this$0:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-virtual {v0}, Lcom/android/settings/sound/RingerVolumeActivity;->doRestoreAllVolumes()V

    .line 183
    return-void
.end method
