.class Landroid/widget/Spinner$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 772
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;
    invoke-static {v1}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;
    invoke-static {v1}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 775
    :cond_0
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 776
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 779
    :cond_1
    return-void
.end method
