.class Landroid/widget/PopupMenu$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    # getter for: Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    invoke-static {v0}, Landroid/widget/PopupMenu;->access$000(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 118
    const/4 v0, 0x1

    return v0
.end method
