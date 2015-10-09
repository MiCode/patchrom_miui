.class Landroid/view/View$2;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 6674
    iput-object p1, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iput p2, p0, Landroid/view/View$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 2
    .param p1, "t"    # Landroid/view/View;

    .prologue
    .line 6677
    iget v0, p1, Landroid/view/View;->mNextFocusForwardId:I

    iget v1, p0, Landroid/view/View$2;->val$id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6674
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$2;->apply(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
