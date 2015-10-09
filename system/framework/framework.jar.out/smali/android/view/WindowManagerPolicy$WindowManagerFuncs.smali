.class public interface abstract Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerFuncs"
.end annotation


# static fields
.field public static final LID_ABSENT:I = -0x1

.field public static final LID_CLOSED:I = 0x0

.field public static final LID_OPEN:I = 0x1


# virtual methods
.method public abstract addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
.end method

.method public abstract getLidState()I
.end method

.method public abstract getWindowManagerLock()Ljava/lang/Object;
.end method

.method public abstract reboot()V
.end method

.method public abstract rebootSafeMode(Z)V
.end method

.method public abstract reevaluateStatusBarVisibility()V
.end method

.method public abstract registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
.end method

.method public abstract shutdown(Z)V
.end method

.method public abstract switchKeyboardLayout(II)V
.end method

.method public abstract unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
.end method
