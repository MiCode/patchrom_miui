.class Landroid/widget/Spinner$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;

.field final synthetic val$popup:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 201
    iput-object p1, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    iput-object p3, p0, Landroid/widget/Spinner$1;->val$popup:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/Spinner$1;->val$popup:Landroid/widget/Spinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 212
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
