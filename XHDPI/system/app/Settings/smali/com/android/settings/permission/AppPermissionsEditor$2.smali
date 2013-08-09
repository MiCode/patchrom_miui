.class Lcom/android/settings/permission/AppPermissionsEditor$2;
.super Ljava/lang/Object;
.source "AppPermissionsEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/AppPermissionsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/AppPermissionsEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/AppPermissionsEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/high16 v4, 0x4000

    .line 221
    move-object v1, p1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 222
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-virtual {v2}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0776

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-virtual {v2}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0778

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/permission/AppPermissionsEditor$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor$2$1;-><init>(Lcom/android/settings/permission/AppPermissionsEditor$2;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    const/4 v2, 0x0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v2

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings/permission/AppPermissionsEditor;->access$400(Lcom/android/settings/permission/AppPermissionsEditor;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/permission/AppPermissionsEditor;->access$300(Lcom/android/settings/permission/AppPermissionsEditor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 243
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/android/settings/permission/AppPermissionsEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor$2;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/permission/AppPermissionsEditor;->access$300(Lcom/android/settings/permission/AppPermissionsEditor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x1

    goto :goto_0
.end method
