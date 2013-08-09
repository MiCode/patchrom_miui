.class public Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyguardAppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardAppWidgetPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppWidgetAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 450
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 451
    iput-object p2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    .line 452
    return-void
.end method


# virtual methods
.method public cancelAllWidgetPreviewLoaders()V
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    invoke-virtual {v1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->cancelLoadingWidgetPreview()V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 472
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 479
    if-nez p2, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040052

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 483
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    .line 484
    .local v1, item:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    const v3, 0x7f0900d6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 485
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const v3, 0x7f09001a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 487
    .local v0, iconView:Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    invoke-virtual {v1, v0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->loadWidgetPreview(Landroid/widget/ImageView;)V

    .line 489
    return-object p2
.end method
