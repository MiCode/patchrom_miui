.class Lcom/android/settings/permission/AppPermissionsEditor$1;
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
    .line 191
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    move-object v1, p1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 195
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-virtual {v3}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0776

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-virtual {v3}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0777

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/permission/AppPermissionsEditor$1$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor$1$1;-><init>(Lcom/android/settings/permission/AppPermissionsEditor$1;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 214
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v2

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v4}, Lcom/android/settings/permission/AppPermissionsEditor;->access$100(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;
    invoke-static {v5}, Lcom/android/settings/permission/AppPermissionsEditor;->access$000(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/bean/Package;

    move-result-object v5

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v5, v2}, Lcom/lbe/security/service/privacy/HIPSService;->trustPackage(Lcom/lbe/security/bean/Package;Z)V

    .line 211
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$1;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #calls: Lcom/android/settings/permission/AppPermissionsEditor;->initUI()V
    invoke-static {v2}, Lcom/android/settings/permission/AppPermissionsEditor;->access$200(Lcom/android/settings/permission/AppPermissionsEditor;)V

    move v2, v3

    .line 212
    goto :goto_0
.end method
