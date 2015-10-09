.class Landroid/widget/TableRow$ChildrenTracker;
.super Ljava/lang/Object;
.source "TableRow.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenTracker"
.end annotation


# instance fields
.field private listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/TableRow;


# direct methods
.method private constructor <init>(Landroid/widget/TableRow;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TableRow;Landroid/widget/TableRow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TableRow;
    .param p2, "x1"    # Landroid/widget/TableRow$1;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TableRow$ChildrenTracker;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 526
    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 527
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 531
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;
    invoke-static {v0, v1}, Landroid/widget/TableRow;->access$302(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    .line 533
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 536
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;
    invoke-static {v0, v1}, Landroid/widget/TableRow;->access$302(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    .line 542
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 545
    :cond_0
    return-void
.end method
