.class Landroid/telephony/TelephonyManager$Listener$1;
.super Landroid/os/Handler;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager$Listener;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager$Listener;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Landroid/telephony/TelephonyManager$Listener$1;->this$0:Landroid/telephony/TelephonyManager$Listener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener$1;->this$0:Landroid/telephony/TelephonyManager$Listener;

    iget-object v1, v0, Landroid/telephony/TelephonyManager$Listener;->mListener:Landroid/telephony/CallStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Landroid/telephony/CallStateListener;->onCallStateChanged(IILjava/lang/String;)V

    .line 84
    return-void
.end method
