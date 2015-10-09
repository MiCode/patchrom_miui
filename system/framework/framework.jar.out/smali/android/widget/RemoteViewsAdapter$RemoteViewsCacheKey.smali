.class Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsCacheKey"
.end annotation


# instance fields
.field final filter:Landroid/content/Intent$FilterComparison;

.field final userId:I

.field final widgetId:I


# direct methods
.method constructor <init>(Landroid/content/Intent$FilterComparison;II)V
    .locals 0
    .param p1, "filter"    # Landroid/content/Intent$FilterComparison;
    .param p2, "widgetId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    .line 805
    iput p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    .line 806
    iput p3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    .line 807
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 811
    instance-of v2, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    if-nez v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 814
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 815
    .local v0, "other":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    iget-object v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    iget v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    iget v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->hashCode()I

    move-result v0

    goto :goto_0
.end method
