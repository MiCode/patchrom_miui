.class Lcom/android/settings/applications/ManageApplicationsActivity$1$1;
.super Ljava/lang/Object;
.source "ManageApplicationsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 888
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsActivity$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mActivityResumed:Z
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$500(Lcom/android/settings/applications/ManageApplicationsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 890
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsActivity$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$600(Lcom/android/settings/applications/ManageApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsActivity$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$600(Lcom/android/settings/applications/ManageApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 892
    .local v1, tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 893
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->pause()V

    .line 890
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    .end local v1           #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsActivity$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$700(Lcom/android/settings/applications/ManageApplicationsActivity;)Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 897
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsActivity$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$700(Lcom/android/settings/applications/ManageApplicationsActivity;)Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$1$1;->this$1:Lcom/android/settings/applications/ManageApplicationsActivity$1;

    iget-object v3, v3, Lcom/android/settings/applications/ManageApplicationsActivity$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$800(Lcom/android/settings/applications/ManageApplicationsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->resume(I)V

    .line 900
    .end local v0           #i:I
    :cond_2
    return-void
.end method
