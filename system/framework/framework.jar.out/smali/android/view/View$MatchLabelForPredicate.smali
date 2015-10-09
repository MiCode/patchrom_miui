.class Landroid/view/View$MatchLabelForPredicate;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchLabelForPredicate"
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
.field private mLabeledId:I

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 19466
    iput-object p1, p0, Landroid/view/View$MatchLabelForPredicate;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 19466
    invoke-direct {p0, p1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$802(Landroid/view/View$MatchLabelForPredicate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/View$MatchLabelForPredicate;
    .param p1, "x1"    # I

    .prologue
    .line 19466
    iput p1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    return p1
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 19471
    # getter for: Landroid/view/View;->mLabelForId:I
    invoke-static {p1}, Landroid/view/View;->access$2700(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

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
    .line 19466
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$MatchLabelForPredicate;->apply(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
