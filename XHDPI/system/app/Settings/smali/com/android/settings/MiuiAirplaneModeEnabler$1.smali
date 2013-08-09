.class Lcom/android/settings/MiuiAirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "MiuiAirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/MiuiAirplaneModeEnabler$1;->this$0:Lcom/android/settings/MiuiAirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler$1;->this$0:Lcom/android/settings/MiuiAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->update()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
