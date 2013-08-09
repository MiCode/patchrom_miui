.class Lcom/android/settings/wifi/WpsActivity$4;
.super Ljava/util/TimerTask;
.source "WpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsActivity;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity$4;->this$0:Lcom/android/settings/wifi/WpsActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$4;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$600(Lcom/android/settings/wifi/WpsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WpsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsActivity$4$1;-><init>(Lcom/android/settings/wifi/WpsActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method
