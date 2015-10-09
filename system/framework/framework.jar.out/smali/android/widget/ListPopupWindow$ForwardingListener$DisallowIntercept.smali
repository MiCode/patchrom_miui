.class Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListPopupWindow$ForwardingListener;
    .param p2, "x1"    # Landroid/widget/ListPopupWindow$1;

    .prologue
    .line 1360
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1363
    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ListPopupWindow$ForwardingListener;

    # getter for: Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/ListPopupWindow$ForwardingListener;->access$800(Landroid/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1364
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1365
    return-void
.end method
