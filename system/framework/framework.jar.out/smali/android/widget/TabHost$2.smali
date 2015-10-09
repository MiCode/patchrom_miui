.class Landroid/widget/TabHost$2;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Landroid/widget/TabHost;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 155
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    # getter for: Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/TabHost;->access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 158
    :cond_0
    return-void
.end method
