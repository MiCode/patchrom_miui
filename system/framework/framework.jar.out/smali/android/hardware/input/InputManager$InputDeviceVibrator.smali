.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 1
    .param p2, "deviceId"    # I

    .prologue
    .line 833
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 834
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 835
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 836
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    # getter for: Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    invoke-static {v1}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;J)V
    .locals 0
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J

    .prologue
    .line 865
    invoke-virtual {p0, p3, p4}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate(J)V

    .line 866
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JI)V
    .locals 0
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I

    .prologue
    .line 873
    invoke-virtual {p0, p3, p4}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate([JI)V

    .line 874
    return-void
.end method

.method public vibrate(J)V
    .locals 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 845
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate([JI)V

    .line 846
    return-void
.end method

.method public vibrate([JI)V
    .locals 4
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 850
    array-length v1, p1

    if-lt p2, v1, :cond_0

    .line 851
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 854
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    # getter for: Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    invoke-static {v1}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
