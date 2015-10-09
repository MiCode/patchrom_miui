.class Landroid/media/SubtitleController$2;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleController;


# direct methods
.method constructor <init>(Landroid/media/SubtitleController;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Landroid/media/SubtitleController$2;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/SubtitleController$2;->this$0:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 78
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/media/SubtitleController$2;->this$0:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 84
    return-void
.end method
