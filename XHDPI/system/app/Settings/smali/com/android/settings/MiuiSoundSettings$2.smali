.class Lcom/android/settings/MiuiSoundSettings$2;
.super Landroid/database/ContentObserver;
.source "MiuiSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$2;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings$2;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumeAndVibrate()V

    .line 243
    return-void
.end method
