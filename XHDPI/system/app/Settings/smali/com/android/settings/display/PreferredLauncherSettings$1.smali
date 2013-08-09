.class Lcom/android/settings/display/PreferredLauncherSettings$1;
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


# direct methods
.method constructor <init>(Lcom/android/settings/display/PreferredLauncherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/display/PreferredLauncherSettings$1;->this$0:Lcom/android/settings/display/PreferredLauncherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/display/PreferredLauncherSettings$1;->this$0:Lcom/android/settings/display/PreferredLauncherSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/display/PreferredLauncherSettings;->setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/display/PreferredLauncherSettings;->access$000(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V

    .line 88
    return-void
.end method
