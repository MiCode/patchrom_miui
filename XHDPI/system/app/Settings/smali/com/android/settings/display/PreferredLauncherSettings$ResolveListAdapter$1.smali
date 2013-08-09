.class Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter$1;
.super Ljava/lang/Object;
.source "PreferredLauncherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter$1;->this$0:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.LauncherPreferenceActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter$1;->this$0:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    #getter for: Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->access$100(Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
