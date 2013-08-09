.class Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;
.super Ljava/lang/Object;
.source "SelectAutoRunApplicationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;

.field final synthetic val$holderClick:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;

.field final synthetic val$info:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->this$1:Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;

    iput-object p2, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$info:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$holderClick:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;

    iput p4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->this$1:Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;

    iget-object v0, v0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$300(Lcom/android/settings/SelectAutoRunApplicationActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$holderClick:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnable:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$holderClick:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->this$1:Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;

    iget-object v0, v0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z
    invoke-static {v0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$500(Lcom/android/settings/SelectAutoRunApplicationActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;->val$position:I

    aput-boolean v3, v0, v1

    .line 157
    return-void
.end method
