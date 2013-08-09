.class Lcom/android/settings/permission/AppPermissionsEditor$3;
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
    .line 251
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor$3;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 254
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 255
    .local v1, newActionValue:I
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 256
    .local v0, id:I
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$3;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v2}, Lcom/android/settings/permission/AppPermissionsEditor;->access$100(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor$3;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #getter for: Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;
    invoke-static {v3}, Lcom/android/settings/permission/AppPermissionsEditor;->access$000(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/bean/Package;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/lbe/security/service/privacy/HIPSService;->setPackagePermission(Lcom/lbe/security/bean/Package;II)V

    .line 257
    check-cast p1, Lcom/android/settings/permission/AppPermsEditorPreference;

    .end local p1
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor$3;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #calls: Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I
    invoke-static {v2, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->access$500(Lcom/android/settings/permission/AppPermissionsEditor;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/permission/AppPermsEditorPreference;->setState(I)V

    .line 258
    const/4 v2, 0x1

    return v2
.end method
