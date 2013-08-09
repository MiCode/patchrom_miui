.class Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->handleStateChanged(I)V

    .line 48
    return-void
.end method
