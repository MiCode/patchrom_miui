.class public interface abstract Landroid/view/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;,
        Landroid/view/WindowManagerPolicy$ScreenOnListener;,
        Landroid/view/WindowManagerPolicy$PointerEventListener;,
        Landroid/view/WindowManagerPolicy$WindowManagerFuncs;,
        Landroid/view/WindowManagerPolicy$FakeWindow;,
        Landroid/view/WindowManagerPolicy$WindowState;
    }
.end annotation


# static fields
.field public static final ACTION_GO_TO_SLEEP:I = 0x4

.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final ACTION_WAKE_UP:I = 0x2

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final FLAG_ALT:I = 0x10

.field public static final FLAG_ALT_GR:I = 0x20

.field public static final FLAG_BRIGHT_HERE:I = 0x20000000

.field public static final FLAG_CAPS_LOCK:I = 0x8

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_LAUNCHER:I = 0x80

.field public static final FLAG_MENU:I = 0x40

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_SHIFT:I = 0x4

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x100

.field public static final FLAG_WAKE:I = 0x1

.field public static final FLAG_WAKE_DROPPED:I = 0x2

.field public static final FLAG_WOKE_HERE:I = 0x10000000

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_PROX_SENSOR:I = 0x4

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1

.field public static final WATCH_POINTER:Z


# virtual methods
.method public abstract addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract beginLayoutLw(ZIII)V
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract canMagnifyWindow(I)Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw()V
.end method

.method public abstract dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishLayoutLw()V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getAboveUniverseLayer()I
.end method

.method public abstract getConfigDisplayHeight(III)I
.end method

.method public abstract getConfigDisplayWidth(III)I
.end method

.method public abstract getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
.end method

.method public abstract getContentRectLw(Landroid/graphics/Rect;)V
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getNonDecorDisplayHeight(III)I
.end method

.method public abstract getNonDecorDisplayWidth(III)I
.end method

.method public abstract getSystemDecorLayerLw()I
.end method

.method public abstract getUserRotationMode()I
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public abstract interceptMotionBeforeQueueingWhenScreenOff(I)I
.end method

.method public abstract isDefaultOrientationForced()Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardSecure()Z
.end method

.method public abstract isScreenOnEarly()Z
.end method

.method public abstract isScreenOnFully()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyBackLidSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract rotationForOrientationLw(II)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenTurnedOff(I)V
.end method

.method public abstract screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDisplayOverscan(Landroid/view/Display;IIII)V
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;III)V
.end method

.method public abstract setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setTouchExplorationEnabled(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract subWindowTypeToLayerLw(I)I
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract userActivity()V
.end method

.method public abstract validateRotationAnimationLw(IIZ)Z
.end method

.method public abstract windowTypeToLayerLw(I)I
.end method
