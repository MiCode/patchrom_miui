.class Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 2
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    .line 962
    invoke-virtual {p1, p2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 963
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 964
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 965
    const/4 v0, 0x0

    return v0
.end method
