.class Lcom/android/settings/display/PreferredLauncherSettings$2;
.super Ljava/lang/Object;
.source "PreferredLauncherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PreferredLauncherSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PreferredLauncherSettings;

.field final synthetic val$ri:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/display/PreferredLauncherSettings$2;->this$0:Lcom/android/settings/display/PreferredLauncherSettings;

    iput-object p2, p0, Lcom/android/settings/display/PreferredLauncherSettings$2;->val$ri:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/display/PreferredLauncherSettings$2;->this$0:Lcom/android/settings/display/PreferredLauncherSettings;

    iget-object v1, p0, Lcom/android/settings/display/PreferredLauncherSettings$2;->val$ri:Landroid/content/pm/ResolveInfo;

    #calls: Lcom/android/settings/display/PreferredLauncherSettings;->setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/display/PreferredLauncherSettings;->access$000(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V

    .line 82
    return-void
.end method
