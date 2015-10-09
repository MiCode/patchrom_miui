.class Landroid/view/ViewPropertyAnimator$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyBundle"
.end annotation


# instance fields
.field mNameValuesHolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPropertyMask:I


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "propertyMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "nameValuesHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 177
    iput-object p2, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    .line 178
    return-void
.end method


# virtual methods
.method cancel(I)Z
    .locals 5
    .param p1, "propertyConstant"    # I

    .prologue
    .line 191
    iget v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 193
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 194
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 195
    .local v2, "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v3, v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    if-ne v3, p1, :cond_0

    .line 196
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    iget v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 198
    const/4 v3, 0x1

    .line 202
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :goto_1
    return v3

    .line 193
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
