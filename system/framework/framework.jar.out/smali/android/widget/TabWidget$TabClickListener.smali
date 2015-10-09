.class Landroid/widget/TabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Landroid/widget/TabWidget;


# direct methods
.method private constructor <init>(Landroid/widget/TabWidget;I)V
    .locals 0
    .param p2, "tabIndex"    # I

    .prologue
    .line 541
    iput-object p1, p0, Landroid/widget/TabWidget$TabClickListener;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput p2, p0, Landroid/widget/TabWidget$TabClickListener;->mTabIndex:I

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TabWidget;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/widget/TabWidget$1;

    .prologue
    .line 537
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/TabWidget$TabClickListener;->this$0:Landroid/widget/TabWidget;

    # getter for: Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Landroid/widget/TabWidget;->access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Landroid/widget/TabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 547
    return-void
.end method
