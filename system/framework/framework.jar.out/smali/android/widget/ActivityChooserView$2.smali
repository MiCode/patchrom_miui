.class Landroid/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    # invokes: Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    # invokes: Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 145
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/widget/ActivityChooserView$2;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    goto :goto_0
.end method
