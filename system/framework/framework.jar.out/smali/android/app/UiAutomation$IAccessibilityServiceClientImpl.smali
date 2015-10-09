.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;
.super Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAccessibilityServiceClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/UiAutomation;


# direct methods
.method public constructor <init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 682
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;->this$0:Landroid/app/UiAutomation;

    .line 683
    const/4 v0, 0x0

    new-instance v1, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;

    invoke-direct {v1, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;-><init>(Landroid/app/UiAutomation;)V

    invoke-direct {p0, v0, p2, v1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    .line 729
    return-void
.end method
