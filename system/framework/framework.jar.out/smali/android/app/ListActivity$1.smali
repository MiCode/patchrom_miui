.class Landroid/app/ListActivity$1;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ListActivity;


# direct methods
.method constructor <init>(Landroid/app/ListActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Landroid/app/ListActivity$1;->this$0:Landroid/app/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/ListActivity$1;->this$0:Landroid/app/ListActivity;

    iget-object v0, v0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListActivity$1;->this$0:Landroid/app/ListActivity;

    iget-object v1, v1, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 193
    return-void
.end method
