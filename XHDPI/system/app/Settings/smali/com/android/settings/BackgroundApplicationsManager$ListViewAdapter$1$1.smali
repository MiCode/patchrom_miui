.class Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;
.super Ljava/lang/Object;
.source "BackgroundApplicationsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/high16 v2, 0x4000

    .line 143
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #getter for: Lcom/android/settings/BackgroundApplicationsManager;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/BackgroundApplicationsManager;->access$200(Lcom/android/settings/BackgroundApplicationsManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget-object v1, v1, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/settings/BackgroundApplicationsManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget-object v1, v1, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #getter for: Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/BackgroundApplicationsManager;->access$100(Lcom/android/settings/BackgroundApplicationsManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget v1, v1, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;->this$2:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iget-object v0, v0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #calls: Lcom/android/settings/BackgroundApplicationsManager;->updateUi()V
    invoke-static {v0}, Lcom/android/settings/BackgroundApplicationsManager;->access$400(Lcom/android/settings/BackgroundApplicationsManager;)V

    .line 149
    return-void
.end method
