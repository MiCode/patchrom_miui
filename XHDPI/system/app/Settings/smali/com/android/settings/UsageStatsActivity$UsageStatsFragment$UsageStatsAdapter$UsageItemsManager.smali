.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageItemsManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private newItem()Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 242
    new-instance v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    invoke-direct {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;-><init>()V

    .line 243
    .local v0, item:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    iget-object v3, v3, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    .line 244
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    iget-object v3, v3, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageInf:Landroid/widget/TextView;

    .line 247
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 248
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageInf:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageInf:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    iget-object v3, v3, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageTime:Landroid/widget/TextView;

    .line 253
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageTime:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageInf:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    return-object v0
.end method

.method private newSplider()Lcom/android/settings/LineView;
    .locals 4

    .prologue
    .line 233
    new-instance v0, Lcom/android/settings/LineView;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->this$1:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    iget-object v1, v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/LineView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, lineView:Lcom/android/settings/LineView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/settings/LineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/LineView;->setOrientation(Z)V

    .line 236
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/LineView;->setStrokeWidth(I)V

    .line 238
    return-object v0
.end method


# virtual methods
.method public allocItem()Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;

    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->newItem()Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->newSplider()Lcom/android/settings/LineView;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;Lcom/android/settings/LineView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;

    return-object v0
.end method

.method public freeItem(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;Lcom/android/settings/LineView;)V
    .locals 2
    .parameter "item"
    .parameter "lineView"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;Lcom/android/settings/LineView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method
