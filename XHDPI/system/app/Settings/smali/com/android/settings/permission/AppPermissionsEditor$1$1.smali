.class Lcom/android/settings/permission/AppPermissionsEditor$1$1;
.super Ljava/lang/Object;
.source "AppPermissionsEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/AppPermissionsEditor$1;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/permission/AppPermissionsEditor$1;

.field final synthetic val$pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/AppPermissionsEditor$1;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$1;

    iput-object p2, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->val$pref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$1;

    iget-object v0, v0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0}, Lcom/android/settings/permission/AppPermissionsEditor;->access$100(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$1;

    iget-object v1, v1, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;
    invoke-static {v1}, Lcom/android/settings/permission/AppPermissionsEditor;->access$000(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/bean/Package;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/privacy/HIPSService;->trustPackage(Lcom/lbe/security/bean/Package;Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$1$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$1;

    iget-object v0, v0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #calls: Lcom/android/settings/permission/AppPermissionsEditor;->initUI()V
    invoke-static {v0}, Lcom/android/settings/permission/AppPermissionsEditor;->access$200(Lcom/android/settings/permission/AppPermissionsEditor;)V

    .line 206
    return-void
.end method
