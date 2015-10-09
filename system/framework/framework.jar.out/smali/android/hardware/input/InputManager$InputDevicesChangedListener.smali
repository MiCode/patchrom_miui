.class final Landroid/hardware/input/InputManager$InputDevicesChangedListener;
.super Landroid/hardware/input/IInputDevicesChangedListener$Stub;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManager;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/input/InputManager;
    .param p2, "x1"    # Landroid/hardware/input/InputManager$1;

    .prologue
    .line 798
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public onInputDevicesChanged([I)V
    .locals 1
    .param p1, "deviceIdAndGeneration"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManager;

    # invokes: Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V
    invoke-static {v0, p1}, Landroid/hardware/input/InputManager;->access$100(Landroid/hardware/input/InputManager;[I)V

    .line 802
    return-void
.end method
