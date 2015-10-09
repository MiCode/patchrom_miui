.class Landroid/app/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/app/FragmentContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Fragment;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 1662
    iput-object p1, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1665
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
