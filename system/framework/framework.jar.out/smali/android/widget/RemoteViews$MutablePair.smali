.class Landroid/widget/RemoteViews$MutablePair;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MutablePair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    .line 160
    iput-object p2, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    .line 161
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<TF;TS;>;"
    const/4 v1, 0x0

    .line 165
    instance-of v2, p1, Landroid/widget/RemoteViews$MutablePair;

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 168
    check-cast v0, Landroid/widget/RemoteViews$MutablePair;

    .line 169
    .local v0, "p":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<**>;"
    iget-object v2, v0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<TF;TS;>;"
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
