.class Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;
.super Ljava/lang/Object;
.source "BackgroundApplicationsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$info:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iput-object p2, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$info:Landroid/content/pm/ApplicationInfo;

    iput p4, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 138
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iget-object v2, v2, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->this$1:Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    iget-object v2, v2, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    const v3, 0x7f0c0912

    invoke-virtual {v2, v3}, Lcom/android/settings/BackgroundApplicationsManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;->val$appName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c040a

    new-instance v3, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1$1;-><init>(Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c040b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 153
    .local v0, alertDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 154
    return-void
.end method
