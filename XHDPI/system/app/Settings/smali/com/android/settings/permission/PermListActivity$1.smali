.class Lcom/android/settings/permission/PermListActivity$1;
.super Ljava/lang/Object;
.source "PermListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/PermListActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/PermListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/permission/PermListActivity$1;->this$0:Lcom/android/settings/permission/PermListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$1;->this$0:Lcom/android/settings/permission/PermListActivity;

    #getter for: Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/permission/PermListActivity;->access$300(Lcom/android/settings/permission/PermListActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$1;->this$0:Lcom/android/settings/permission/PermListActivity;

    #calls: Lcom/android/settings/permission/PermListActivity;->enableMonitor(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/permission/PermListActivity;->access$400(Lcom/android/settings/permission/PermListActivity;Z)V

    .line 133
    return-void
.end method
