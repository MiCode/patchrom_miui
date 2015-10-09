.class public interface abstract Landroid/view/WindowManagerPolicy$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowState"
.end annotation


# virtual methods
.method public abstract computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract getAppToken()Landroid/view/IApplicationToken;
.end method

.method public abstract getAttrs()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getContentFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenContentInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenInsetsPendingLw()Z
.end method

.method public abstract getGivenVisibleInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract getOverscanFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getOwningPackage()Ljava/lang/String;
.end method

.method public abstract getOwningUid()I
.end method

.method public abstract getShownFrameLw()Landroid/graphics/RectF;
.end method

.method public abstract getSurfaceLayer()I
.end method

.method public abstract getSystemUiVisibility()I
.end method

.method public abstract getVisibleFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract hasAppShownWindows()Z
.end method

.method public abstract hasDrawnLw()Z
.end method

.method public abstract hideLw(Z)Z
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isAnimatingLw()Z
.end method

.method public abstract isDefaultDisplay()Z
.end method

.method public abstract isDisplayedLw()Z
.end method

.method public abstract isGoneForLayoutLw()Z
.end method

.method public abstract isVisibleLw()Z
.end method

.method public abstract isVisibleOrBehindKeyguardLw()Z
.end method

.method public abstract showLw(Z)Z
.end method
