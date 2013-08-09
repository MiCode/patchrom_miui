.class Lcom/android/settings/OldmanModeSettings$1$1;
.super Ljava/lang/Object;
.source "OldmanModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OldmanModeSettings$1;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/OldmanModeSettings$1;

.field final synthetic val$newOldmanMode:Z


# direct methods
.method constructor <init>(Lcom/android/settings/OldmanModeSettings$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/OldmanModeSettings$1$1;->this$1:Lcom/android/settings/OldmanModeSettings$1;

    iput-boolean p2, p0, Lcom/android/settings/OldmanModeSettings$1$1;->val$newOldmanMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings$1$1;->this$1:Lcom/android/settings/OldmanModeSettings$1;

    iget-object v0, v0, Lcom/android/settings/OldmanModeSettings$1;->this$0:Lcom/android/settings/OldmanModeSettings;

    #getter for: Lcom/android/settings/OldmanModeSettings;->mEnableOldmanMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/OldmanModeSettings;->access$000(Lcom/android/settings/OldmanModeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/OldmanModeSettings$1$1;->val$newOldmanMode:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/OldmanModeSettings$1$1;->this$1:Lcom/android/settings/OldmanModeSettings$1;

    iget-object v0, v0, Lcom/android/settings/OldmanModeSettings$1;->this$0:Lcom/android/settings/OldmanModeSettings;

    iget-boolean v1, p0, Lcom/android/settings/OldmanModeSettings$1$1;->val$newOldmanMode:Z

    invoke-static {v0, v1}, Lcom/android/settings/OldmanHelper;->setOldmanMode(Landroid/content/Context;Z)V

    .line 47
    return-void
.end method
