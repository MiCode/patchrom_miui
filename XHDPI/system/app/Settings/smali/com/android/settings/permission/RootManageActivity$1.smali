.class Lcom/android/settings/permission/RootManageActivity$1;
.super Ljava/lang/Object;
.source "RootManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/RootManageActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/RootManageActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/RootManageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/permission/RootManageActivity$1;->this$0:Lcom/android/settings/permission/RootManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$1;->this$0:Lcom/android/settings/permission/RootManageActivity;

    #getter for: Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/permission/RootManageActivity;->access$300(Lcom/android/settings/permission/RootManageActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$1;->this$0:Lcom/android/settings/permission/RootManageActivity;

    #calls: Lcom/android/settings/permission/RootManageActivity;->enableRoot(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/permission/RootManageActivity;->access$400(Lcom/android/settings/permission/RootManageActivity;Z)V

    .line 134
    return-void
.end method
