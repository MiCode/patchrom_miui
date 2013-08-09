.class Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplicationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->access$000(Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 478
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 479
    .local v1, fr:Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 480
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 481
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 489
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->access$102(Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 490
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 491
    return-void
.end method
