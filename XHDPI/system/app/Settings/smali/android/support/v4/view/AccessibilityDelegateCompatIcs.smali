.class Landroid/support/v4/view/AccessibilityDelegateCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 87
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
    .locals 1
    .parameter "bridge"

    .prologue
    .line 46
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V

    return-object v0
.end method

.method public static newAccessibilityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-object v0
.end method

.method public static onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 92
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 93
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "info"

    .prologue
    .line 96
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 98
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 102
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 103
    return-void
.end method

.method public static onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "delegate"
    .parameter "host"
    .parameter "child"
    .parameter "event"

    .prologue
    .line 107
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "eventType"

    .prologue
    .line 112
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 113
    return-void
.end method

.method public static sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "delegate"
    .parameter "host"
    .parameter "event"

    .prologue
    .line 117
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 118
    return-void
.end method
