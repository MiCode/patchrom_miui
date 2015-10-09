.class final Landroid/view/ViewDebug$3;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic post([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 537
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$3;->post([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs post([Ljava/lang/Void;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Void;

    .prologue
    .line 547
    return-void
.end method

.method public bridge synthetic pre()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/view/ViewDebug$3;->pre()[Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public pre()[Ljava/lang/Void;
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 537
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$3;->run([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs run([Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # [Ljava/lang/Void;

    .prologue
    .line 543
    iget-object v0, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    iget-object v2, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mTop:I

    iget-object v3, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mRight:I

    iget-object v4, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget v4, v4, Landroid/view/View;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 544
    return-void
.end method
