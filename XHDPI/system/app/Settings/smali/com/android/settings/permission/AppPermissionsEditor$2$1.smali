.class Lcom/android/settings/permission/AppPermissionsEditor$2$1;
.super Ljava/lang/Object;
.source "AppPermissionsEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/AppPermissionsEditor$2;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/permission/AppPermissionsEditor$2;

.field final synthetic val$pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/AppPermissionsEditor$2;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor$2$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$2;

    iput-object p2, p0, Lcom/android/settings/permission/AppPermissionsEditor$2$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$2$1;->val$pref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$2$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$2;

    iget-object v0, v0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/permission/AppPermissionsEditor;->access$400(Lcom/android/settings/permission/AppPermissionsEditor;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor$2$1;->this$1:Lcom/android/settings/permission/AppPermissionsEditor$2;

    iget-object v1, v1, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/permission/AppPermissionsEditor;->access$300(Lcom/android/settings/permission/AppPermissionsEditor;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 235
    return-void
.end method
